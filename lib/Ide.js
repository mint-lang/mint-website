import lineColumn from "line-column";

import Editor, {
  highlightEffect,
  clearEffect,
  Decoration,
  EditorView,
} from "./Editor.js";

import Client from "./Client.js";

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
  constructor({orientation, onChange, endpoint, value, base, previewHeight, editorHeight} = params) {
    this.decorations = {};
    this.value = value;

    this.setupDom(base, orientation, previewHeight, editorHeight);
    this.setupEditor(onChange);
    this.setupClient(endpoint);
  }

  setupDom(element, orientation, previewHeight, editorHeight) {
    const shadow = element.attachShadow({ mode: 'closed' });

    let statusBarStyles = "";
    let iframeStyles = "";
    let ideStyles;

    if (orientation == "vertical") {
      ideStyles = `
        grid-template-areas: "status" "editor" "preview";
        grid-template-rows: auto ${editorHeight} ${previewHeight};
      `;

      statusBarStyles = `
        border-bottom: 3px double var(--border-color);
      `;
    } else {
      ideStyles = `
        grid-template-areas: "status preview" "editor preview";
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
          box-sizing: boder-box;
          grid-area: preview;

          background: white;
          height: 100%;
          width: 100%;
          border:0;

          ${iframeStyles}
        }

        .statusBar {
          grid-area: status;

          border-bottom: 3px double var(--border-color);

          background: var(--input-color);
          background-clip: padding-box;

          font-weight: bold;
          line-height: 24px;
          font-size: 12px;
          height: 24px;

          justify-content: space-between;
          padding: 0 20px;
          display: flex;
        }

        .parent {
          grid-area: editor;

          min-height: 0;
          display: grid;
        }
      </style>

      <div class="ide">
        <div class="statusBar">
          <div class="filename"></div>
          <div class="status"></div>
        </div>
        <div class="parent"></div>
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

    const defaultValue =
      this.value
        .files
        .filter((file) => file.path)
        .map((file) => file.contents)[0] || "";

    this.filename.textContent =
      this.value.activeFile;

    this.editor = Editor({
      defaultValue: defaultValue,
      parent: this.parent,
      onUpdate: onUpdate
    });
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
    this.filename.textContent = newValue.activeFile;
    this.skipUpdate = true;
    this.value = newValue;

    this.client.send(
      "sandbox/reset",
      this.value.files.map((file) => [file.path, file.contents]),
      () => this.semanticHighlight())

    const value =
      this.value
      .files
      .filter((file) => file.path)
      .map((file) => file.contents)[0] || "";

    this.editor.dispatch({
      changes: {
        to: this.editor.state.doc.length,
        insert: value,
        from: 0
      },
      effects: [
        clearEffect.of(null),
        EditorView.scrollIntoView(0, { y: 'start' }),
      ]
    });
  }
}
