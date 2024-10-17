import {Decoration, lineNumbers, keymap} from "@codemirror/view";
import {StateEffect, StateField} from "@codemirror/state";
import {EditorView, minimalSetup} from "codemirror";
import {indentWithTab} from "@codemirror/commands";

export { Decoration } from "@codemirror/view";
export { EditorView } from "codemirror";

// This is the effect that adds semantic highlighting decorations.
export const highlightEffect = StateEffect.define();

// This is the ffect that clears previous decorations.
export const clearEffect = StateEffect.define();

// This is a state field the applies the decorations.
const semanticHighlight = StateField.define({
  provide: function (f) { return EditorView.decorations.from(f) },
  create: function () { return Decoration.none },
  update: function (previous, transaction) {
    // If the clear effect is in the transactions we clear.
    const clear =
      transaction
        .effects
        .filter((effect) => effect.is(clearEffect))
        .length >= 1;

    if (clear) {
      return Decoration.none;
    } else {
      let value =
        Decoration.none.map(transaction.changes);

      for (let effect of transaction.effects) {
        if (effect.is(highlightEffect)) {
          value = value.update({
            add: effect.value,
            sort: true
          });
        };
      }

      // If there are decorations we return them otherwise we return
      // the previous state because the update is called on every change.
      if (value.size > 0) {
        return value;
      } else {
        return previous.map(transaction.changes);
      };
    };
  },
});

const theme = EditorView.theme({
  "&": {
    borderBottom: "3px double var(--border-color)",
    fontSize: "16px",
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
  ".cm-cursor": {
    borderLeftColor: "var(--text-color)",
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
});

export default ({ parent, defaultValue, onUpdate } = options) => {
  const updateExtension =
    EditorView.updateListener.of((view) => {
      if (view.docChanged) {
        onUpdate(view.state.doc.toString())
      }
    });

  return new EditorView({
    doc: defaultValue,
    parent: parent,
    extensions: [
      minimalSetup,
      lineNumbers(),
      keymap.of([indentWithTab]),
      semanticHighlight,
      updateExtension,
      theme,
    ]
  });
};
