import {Decoration, lineNumbers, keymap} from "@codemirror/view"
import {StateEffect, StateField} from "@codemirror/state"
import {EditorView, minimalSetup} from "codemirror"
import {indentWithTab} from "@codemirror/commands"

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

      // We there are decorations to we return them otherwise
      // the previous state because the update is called on
      // every change.
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

    const updateExtension = EditorView.updateListener.of((v) => {
      if (v.docChanged) {
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
        borderBottom: "3px double #EEE",
        fontSize: "14px",
        lineHeight: 1.5
      },
      "&.cm-focused, .cm-content:focus-visible": {
        outline: "none"
      },
      ".cm-scroller": {
        fontFamily: "'Fira Code'",
      },
      "&, .cm-content, .cm-gutter": { minHeight: "0" },
      ".cm-gutters": {
        borderRight: "1px solid #EEE",
        background: "transparent",
        padding: "0 10px",
        color: "#CCC",
      },
      ".sh-comment": {
        opacity: 0.5
      },
      ".sh-regexp": {
        color: "darkorange"
      },
      ".sh-number": {
        color: "crimson"
      },
      ".sh-string": {
        color: "seagreen"
      },
      ".sh-namespace, .sh-property": {
        color: "indianred"
      },
      ".sh-type": {
        color: "royalblue"
      },
      ".sh-keyword": {
        color: "darkmagenta"
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
      ],
    });

    // We create a WebSocket to communicate with the backend.
    this.socket = new WebSocket("ws://localhost:3003")
    this.socket.onmessage = (event) => {
      const message = JSON.parse(event.data)

      if (message.type == "highlight") {
        this.semanticHighlight(message.tokens)
      }

      if (message.type == "reload") {
        this.iframe.contentWindow.location.replace(message.url)
      }
    };

    this.socket.onopen = () => {
      this.sendUpdate()
    }

    this.iframe = document.createElement('iframe')
    this.iframe.style = "border: 0;width: 100%;height:100%;"

    this.container.appendChild(this.iframe)
    parent.appendChild(this.container)
  }

  sendUpdate () {
    this.socket.send(JSON.stringify({
      payload: this.project,
      type: "update",
    }))
  }

  getDecorationForType(type){
    if (this.decorations[type]) { return this.decorations[type] }
    this.decorations[type] = Decoration.mark({ class: `sh-${type}`, inclusive: true });
    return this.decorations[type]
  }

  semanticHighlight (tokens) {
    if (tokens.length) {
      const effects = tokens.map((item) => {
        return this.getDecorationForType(item.type).range(item.from, item.to)
      })

      this.editor.dispatch({
        effects: highlightEffect.of(effects)
      });
    } else {
      // We clear the previous hihlights (decorations).
      this.editor.dispatch({ effects: clearEffect.of(null)})
    }
  }

  getValue () {
    return this.project
  }

  setValue (project) {
    this.skipDebounce = true
    this.project = project

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

export default Ide
