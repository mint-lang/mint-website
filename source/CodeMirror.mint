component CodeMirror {
  property onChange : Function(String, Void) = \value : String => void
  property value : String = ""

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

  fun render : Html {
    <div::base>
      <textarea ref={initRef}/>
    </div>
  }
}
