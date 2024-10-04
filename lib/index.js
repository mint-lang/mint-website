import {Decoration, lineNumbers, keymap} from "@codemirror/view"
import {StateEffect, StateField} from "@codemirror/state"
import {EditorView, minimalSetup} from "codemirror"
import {indentWithTab} from "@codemirror/commands"

import Client from "./lspClient.js";
import lineColumn from "line-column";

// Standard debounce function.
const debounce = (callback, wait) => {
  let timeoutId = null;

  return (...args) => {
    window.clearTimeout(timeoutId);

    timeoutId = window.setTimeout(() => {
      callback(...args);
    }, wait);
  };
}

// This is the effect that adds semantic highlighting decorations.
const highlightEffect = StateEffect.define();

// This is the ffect that clears previous decorations.
const clearEffect = StateEffect.define();

// This is a statefield the applies the decorations.
const semanticHighlight = StateField.define({
  provide: function (f) { return EditorView.decorations.from(f) },
  create: function () { return Decoration.none },
  update: function (previous, transaction) {
    // If the clear effect is in the transactions we clear.
    const clear =
      transaction
        .effects
        .filter((effect) => effect.is(clearEffect))
        .length >= 1

    if (clear) {
      return Decoration.none
    } else {
      let value =
        Decoration.none.map(transaction.changes)

      for (let effect of transaction.effects) {
        if (effect.is(highlightEffect)) {
          value = value.update({
            add: effect.value,
            sort: true
          })
        }
      }

      // If there are decorations we return them otherwise we return
      // the previous state because the update is called on every change.
      if (value.size > 0) {
        return value
      } else {
        return previous.map(transaction.changes)
      }
    }
  },
});

class Ide {
  constructor(parent, project, changeCallback) {
    this.decorations = {};
    this.project = project;

    this.container = document.createElement("div")
    this.container.style = "display: grid;grid-template-rows: 1fr 1fr;min-height: 0;";

    const update = debounce(() => this.sendUpdate(), 500)

    const updateExtension =
      EditorView.updateListener.of((view) => {
        if (view.docChanged) {
          this.project = {
            ...this.project,
            files:
              [
                ...this.project.files.map((file) => {
                  if (file.path == this.project.activeFile) {
                    return {
                      ...file,
                      contents: this.editor.state.doc.toString(),
                    }
                  } else {
                    return file
                  }
                })
              ]
          }

          if (this.skipDebounce) {
            this.sendUpdate();
            this.skipDebounce = false;
          } else {
            update();
          }

          changeCallback(this.project);
        }
      })

    const theme = EditorView.theme({
      "&": {
        borderBottom: "3px double var(--border-color)",
        fontSize: "14px",
        lineHeight: 1.5
      },
      "&.cm-focused, .cm-content:focus-visible": {
        outline: "none"
      },
      ".cm-gutters": {
        borderRight: "1px solid var(--border-color)",
        color: "var(--line-number-color)",
        background: "transparent",
        padding: "0 10px"
      },
      ".cm-scroller": {
        fontFamily: "'Fira Code'",
      },
      "&, .cm-content, .cm-gutter": {
        minHeight: "0"
      },
      ".sh-keyword": {
        color: "var(--color-darkmagenta)"
      },
      ".sh-regexp": {
        color: "var(--color-darkorange)"
      },
      ".sh-namespace, .sh-property": {
        color: "var(--color-indianred)"
      },
      ".sh-type": {
        color: "var(--color-royalblue)"
      },
      ".sh-string": {
        color: "var(--color-mintgreen)"
      },
      ".sh-comment": {
        color: "var(--color-comment)"
      },
      ".sh-number": {
        color: "var(--color-crimson)"
      }
    })

    const defaultValue =
      this.project
        .files
        .filter((file) => file.path)
        .map((file) => file.contents)[0] || "";

    this.editor = new EditorView({
      parent: this.container,
      doc: defaultValue,
      extensions: [
        minimalSetup,
        lineNumbers(),
        keymap.of([indentWithTab]),
        semanticHighlight,
        updateExtension,
        theme,
      ]
    });

    this.client = new Client
    this.project.files.forEach((file) => {
      this.client.send("workspace/applyEdit", {
        edit: {
          documentChanges: [
            {
              uri: `sandbox:///${file.path}`,
              kind: 'create'
            },
            {
              textDocument: {
                uri: `sandbox:///${file.path}`,
                edits: [
                  {
                    range:  { line: 0, character: 0 },
                    newText: file.contents
                  }
                ]
              }
            }
          ]
        }
      })
    })

    this.sendUpdate()


    // We create a WebSocket to communicate with the backend.
    // this.socket = new WebSocket("wss://mint-sandbox-0200.szikszai.co")
    // this.socket = new WebSocket("ws://localhost:3003")
    // this.socket.onmessage = (event) => {
    //   const message = JSON.parse(event.data)

    //   if (message.type == "highlight") {
    //     this.semanticHighlight(message.tokens)
    //   }

    //   if (message.type == "reload") {
    //     this.iframe.contentWindow.location.replace(message.url)
    //   }
    // };

    // this.socket.onopen = () => {



    // }

    this.iframe = document.createElement('iframe')
    this.iframe.style = "border: 0;width: 100%;height:100%;background:white;"

    this.container.appendChild(this.iframe)
    parent.appendChild(this.container)
  }

  sendUpdate () {
   this.client.send("textDocument/didChange", {
      textDocument: {
        uri: `sandbox:///${this.project.activeFile}`,
      },
      contentChanges: [
        {text: this.editor.state.doc.toString()}
      ],
    })

   this.client.send("mint/sandboxCompile", {}, (result) => {
     this.iframe.contentWindow.location.replace(result.url)
   })

   this.semanticHighlight()
  }

  getDecorationForType(type){
    if (this.decorations[type]) { return this.decorations[type] }

    this.decorations[type] =
    Decoration.mark({ class: `sh-${type}`, inclusive: true });

    return this.decorations[type]
  }

  semanticHighlight (tokens) {
    this.client.send("textDocument/semanticTokens/full", {
      textDocument: {
        uri: `sandbox:///${this.project.activeFile}`,
      }
    }, (result) => {
      const tokens = []
      let token = null;

      while (result.data.length) {
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
          }
        } else {
          token = {
            modifiers: parts[4],
            length: parts[2],
            start: parts[1],
            line: parts[0],
            type: type
          }
        }

        tokens.push({...token})
      }

      if (tokens.length) {
        const effects = tokens.map((item) => {
          const from =
            lineColumn(this.editor.state.doc.toString(), { origin: 0 })
            .toIndex(item.line, item.start)

          return this.getDecorationForType(item.type).range(from, from + item.length)
        })

        this.editor.dispatch({
          effects: highlightEffect.of(effects)
        });
      } else {
        // We clear the previous hihlights (decorations).
        this.editor.dispatch({ effects: clearEffect.of(null)})
      }
    })
  }

  getValue () {
    return this.project
  }

  setValue (project) {
    this.skipDebounce = true
    this.project = project

    this.project.files.forEach((file) => {
      this.client.send("textDocument/didOpen", {
        textDocument: {
          uri: `sandbox:///${file.path}`,
          text: file.contents,
          languageId: "mint",
          version: 0,
        }
      })
    })

    const value =
      this.project
      .files
      .filter((file) => file.path)
      .map((file) => file.contents)[0] || "";

    this.editor.dispatch({
      changes: {from: 0, to: this.editor.state.doc.length, insert: value},
      effects: [
        clearEffect.of(null),
        EditorView.scrollIntoView(0, { y: 'start' }),
      ]
    });
  }
}

export default Ide;
