component Ide {
  // The change event handler.
  property onChange : Function(Project, Promise(Void))

  // The orientation of the ide (either "horizontal" or "vertical")
  property orientation : String = "vertical"

  // The project to edit.
  property value : Project

  // The self object.
  state this : Object = `{}`

  // When the component mounts we initialize the IDE.
  fun componentDidMount : Void {
    let Just(base) =
      root or return void

    `
    (async () => {
      const { default: Ide } =
        await import(#{@asset(../../assets/ide.js)});

      #{this}.ide = new Ide({
        endpoint: #{@SANDBOX_ENDPOINT},
        orientation: #{orientation},
        onChange: #{onChange},
        value: #{value},
        base: #{base},
      });
    })()
    `
  }

  // When the component updates we update the value.
  fun componentDidUpdate : Void {
    if `#{this}.ide` && value != `#{this}.ide.value` {
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
    <div::root as root/>
  }
}
