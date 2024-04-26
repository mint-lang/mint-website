component Ide {
  // The change event handler.
  property onChange : Function(Project, Promise(Void))

  // The project to edit.
  property value : Project

  // The self object.
  state this : Object = `{}`

  // When the component mounts we initialize the IDE.
  fun componentDidMount : Void {
    let Just(element) =
      base or return void

    `
    (async () => {
      const { default: Ide } =
        await import(#{@asset(../../assets/ide.js)});

      #{this}.ide = new Ide(#{element}, #{value}, #{onChange});
    })()
    `
  }

  // When the component updates we update the value.
  fun componentDidUpdate : Void {
    if `#{this}.ide` && value != `#{this}.ide.getValue()` {
      `#{this}.ide.setValue(#{value})`
    }
  }

  // Styles for the root element.
  style root {
    min-height: 0;
    display: grid;
  }

  // Renders the component.
  fun render : Html {
    <div::root as base/>
  }
}
