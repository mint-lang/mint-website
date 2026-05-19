import lineColumn from "line-column";

import Editor, {
  highlightEffect,
  clearEffect,
  Decoration,
  EditorView,
} from "./Editor.js";

import Client from "./Client.js";

const EDITABLE_EXTENSIONS = new Set([
  "mint", "txt", "md", "json", "css", "html", "svg",
]);

const isEditable = (path) => {
  const dot = path.lastIndexOf(".");
  if (dot < 0) return false;
  return EDITABLE_EXTENSIONS.has(path.slice(dot + 1).toLowerCase());
};

// Standard debounce function.
const debounce = (callback, wait) => {
  let timeoutId = null;

  return (...args) => {
    window.clearTimeout(timeoutId);

    timeoutId = window.setTimeout(() => {
      callback(...args);
    }, wait);
  };
};

export default class Ide {
  constructor({orientation, onChange, endpoint, value, base, previewHeight, editorHeight, fontSize} = params) {
    this.decorations = {};
    this.value = value;
    this.fontSize = fontSize;
    this.orientation = orientation;
    this.onChange = onChange;

    this.setupDom(base, orientation, previewHeight, editorHeight);
    this.setupEditor(onChange);
    this.setupClient(endpoint);
  }

  contentsFor(path) {
    const match = this.value.files.find((f) => f.path && f.path == path);
    if (match) return match.contents;
    const first = this.value.files.find((f) => f.path && isEditable(f.path));
    return first ? first.contents : "";
  }

  renderTabs() {
    const files = this.value.files.filter((f) => f.path);
    this.tabList.innerHTML = "";

    for (const file of files) {
      const button = document.createElement("button");
      button.className = "tab" + (file.path == this.value.activeFile ? " active" : "");
      button.dataset.path = file.path;
      button.textContent = file.path;
      button.addEventListener("click", () => this.switchTo(file.path));
      this.tabList.appendChild(button);
    }
  }

  showEditorFor(path) {
    if (isEditable(path)) {
      this.parent.style.display = "";
      this.placeholder.style.display = "none";
    } else {
      this.parent.style.display = "none";
      this.placeholder.style.display = "flex";
      this.placeholder.textContent = `${path} — binary asset, not editable here`;
    }
  }

  switchTo(path) {
    if (path == this.value.activeFile) return;

    const outgoing = this.value.activeFile;
    const outgoingWasEditable = isEditable(outgoing);

    const files = outgoingWasEditable
      ? this.value.files.map((file) =>
          file.path == outgoing
            ? { ...file, contents: this.editor.state.doc.toString() }
            : file
        )
      : this.value.files;

    this.value = { ...this.value, activeFile: path, files };

    this.renderTabs();
    this.showEditorFor(path);

    if (isEditable(path)) {
      this.skipUpdate = true;
      this.editor.dispatch({
        changes: {
          from: 0,
          to: this.editor.state.doc.length,
          insert: this.contentsFor(path),
        },
        effects: [clearEffect.of(null), EditorView.scrollIntoView(0, { y: "start" })],
      });
      this.semanticHighlight();
    }

    this.onChange(this.value);
  }

  setupDom(element, orientation, previewHeight, editorHeight) {
    const shadow = element.attachShadow({ mode: 'closed' });

    let iframeStyles = "";
    let ideStyles;

    if (orientation == "vertical") {
      ideStyles = `
        grid-template-areas: "tabs" "editor" "preview";
        grid-template-rows: auto ${editorHeight} ${previewHeight};
      `;
    } else {
      ideStyles = `
        grid-template-areas: "tabs preview" "editor preview";
        grid-template-columns: 1fr 1fr;
        grid-template-rows: auto 1fr;
      `;

      iframeStyles = `
        border-left: 3px double var(--border-color);
      `;
    }

    shadow.innerHTML = `
      <style>
        .ide {
          background: var(--background-color);
          display: grid;
          min-height: 0;
          min-width: 0;

          ${ideStyles}
        }

        .iframe {
          box-sizing: border-box;
          grid-area: preview;

          background: white;
          height: 100%;
          width: 100%;
          border:0;

          ${iframeStyles}
        }

        .tabs {
          grid-area: tabs;

          border-bottom: 1px solid var(--border-color);
          background: var(--input-color);
          background-clip: padding-box;

          align-items: center;
          justify-content: space-between;
          display: flex;
          padding: 0 12px;
        }

        .tabList {
          display: flex;
        }

        .status {
          font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
          font-weight: bold;
          font-size: 12px;
          padding: 0 8px;
        }

        .tab {
          font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
          font-size: 12px;
          font-weight: bold;
          line-height: 24px;

          background: transparent;
          border: 0;
          border-bottom: 2px solid transparent;
          color: inherit;
          cursor: pointer;
          padding: 0 12px;
        }

        .tab:hover {
          background: var(--background-color);
        }

        .tab.active {
          border-bottom-color: var(--border-color);
        }

        .parent {
          grid-area: editor;

          position: relative;
          min-height: 0;
          display: grid;
        }

        .placeholder {
          grid-area: editor;

          align-items: center;
          justify-content: center;
          display: none;

          font-size: 13px;
          padding: 20px;
          color: var(--color-comment);
          background: var(--background-color);
          text-align: center;
        }

        .parent > .cm-editor {
          position: absolute !important;
          inset: 0;
        }

        .sh-keyword { color: var(--color-darkmagenta); }
        .sh-regexp { color: var(--color-darkorange); }
        .sh-namespace, .sh-property { color: var(--color-indianred); }
        .sh-type { color: var(--color-royalblue); }
        .sh-string { color: var(--color-mintgreen); }
        .sh-comment { color: var(--color-comment); }
        .sh-number { color: var(--color-crimson); }
      </style>

      <div class="ide">
        <div class="tabs">
          <div class="tabList"></div>
          <div class="status"></div>
        </div>
        <div class="parent"></div>
        <div class="placeholder"></div>
        <iframe class="iframe"></iframe>
      </div>
    `

    for (const item of shadow.querySelectorAll('[class]')) {
      this[item.className] = item;
    };
  }

  setupEditor(onChange) {
    const update =
      debounce(() => this.sendUpdate(), 500);

    const onUpdate =
      (contents) => {
        this.value = {
          ...this.value,
          files: this.value.files.map((file) => {
            if (file.path == this.value.activeFile) {
              return { ...file, contents: contents }
            } else {
              return file
            }
          })
        };

        if (this.skipUpdate) {
          this.skipUpdate = false;
        } else {
          update();
        };

        onChange(this.value);
      };

    const defaultValue = this.contentsFor(this.value.activeFile);

    this.editor = Editor({
      defaultValue: defaultValue,
      parent: this.parent,
      onUpdate: onUpdate,
      fontSize: this.fontSize,
      orientation: this.orientation,
    });

    this.renderTabs();
    this.showEditorFor(this.value.activeFile);
  }

  setupClient(endpoint) {
    this.client = new Client(endpoint);

    this.client.addEventListener("sandbox/compiling", (event) => {
      this.iframe.contentWindow.location.replace("about:blank");
      this.status.textContent = "Compiling...";
    });

    this.client.addEventListener("sandbox/compiled", (event) => {
      this.iframe.contentWindow.location.replace(event.detail.url);
      this.status.textContent = "";
    })

    this.client.send(
      "sandbox/reset",
      this.value.files.map((file) => [file.path, file.contents]),
      (directory) => {
        this.directory = directory
        this.semanticHighlight()
      });
  }

  sendUpdate () {
   this.client.send("sandbox/update", [
      this.value.activeFile,
      this.editor.state.doc.toString()
    ], () => this.semanticHighlight())
  }

  getDecorationForType(type){
    if (this.decorations[type]) { return this.decorations[type] }

    this.decorations[type] =
      Decoration.mark({ class: `sh-${type}`, inclusive: true });

    return this.decorations[type]
  }

  semanticHighlight (tokens) {
    this.client.send(
      "textDocument/semanticTokens/full",
      {
        textDocument: {
          uri: `sandbox://${this.directory}/${this.value.activeFile}`,
        }
      },
        (result) => {
        const tokens = []
        let token = null;

        while (result?.data?.length) {
          const parts =
            result.data.splice(0, 5);

          const type =
            this.client
              .capabilities
              .semanticTokensProvider
              .legend
              .tokenTypes[parts[3]];

          if (token) {
            token = {
              start: parts[0] == 0 ? token.start + parts[1] : parts[1],
              line: token.line + parts[0],
              modifiers: parts[4],
              length: parts[2],
              type: type,
            };
          } else {
            token = {
              modifiers: parts[4],
              length: parts[2],
              start: parts[1],
              line: parts[0],
              type: type
            };
          };

          tokens.push({...token});
        };

        if (tokens.length) {
          const effects = tokens.map((item) => {
            const from =
              lineColumn(this.editor.state.doc.toString(), { origin: 0 })
                .toIndex(item.line, item.start);

            return this.getDecorationForType(item.type).range(from, from + item.length)
          })

          this.editor.dispatch({ effects: highlightEffect.of(effects) });
        } else {
          // We clear the previous hihlights (decorations).
          this.editor.dispatch({ effects: clearEffect.of(null)})
        }
      })
  }

  setValue (newValue) {
    this.skipUpdate = true;
    this.value = newValue;

    this.client.send(
      "sandbox/reset",
      this.value.files.map((file) => [file.path, file.contents]),
      () => this.semanticHighlight())

    this.renderTabs();
    this.showEditorFor(this.value.activeFile);

    if (isEditable(this.value.activeFile)) {
      this.editor.dispatch({
        changes: {
          to: this.editor.state.doc.length,
          insert: this.contentsFor(this.value.activeFile),
          from: 0
        },
        effects: [
          clearEffect.of(null),
          EditorView.scrollIntoView(0, { y: 'start' }),
        ]
      });
    }
  }
}
