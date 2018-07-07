/* A component that integrates the CodeMirror editor. */
component CodeMirror {
  /* Handler for the change event. */
  property onChange : Function(String, Void) = (\value : String => void)

  /* The value of the editor. */
  property value : String = ""

  /* Initializes the editor for the given dom element. */
  fun initRef (element : Dom.Element) : Void {
    `
    (() => {
      if (!window.CodeMirror) { return }

      if (this.editor) { return }

      this.editor = CodeMirror.fromTextArea(element, {
        lineNumbers: true,
        theme: "neo"
      })

      this.editor.on('change', (value) => {
        this.onChange(this.editor.getValue())
      })
    })()
    `
  }

  /* After an update, update the underlying editor instance. */
  fun componentDidUpdate : Void {
    `
    (() => {
      if (this.editor) {
        if (this.props.value != null) {
          if (this.editor.getValue() !== this.props.value) {
            this.editor.setValue(this.props.value);
          }
        }
      }
    })()
    `
  }

  style base {
    flex-direction: column;
    display: flex;
    flex: 1;

    & > * {
      flex: 1;
    }
  }

  /* Renders the component. */
  fun render : Html {
    <div::base>
      <textarea ref={initRef}/>
    </div>
  }
}
