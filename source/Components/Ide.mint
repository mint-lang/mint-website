component Ide {
  property onChange : Function(Project, Promise(Void))
  property value : Project

  state this : Object = `{}`

  fun componentDidMount {
    `
    (async () => {
      const { default: Ide } = await import(#{@asset(../../assets/cm.js)})

      #{this}.ide = new Ide(#{base}._0, #{value}, #{onChange})
    })()
    `
  }

  fun componentDidUpdate {
    if `#{this}.ide` && value != `#{this}.ide.getValue()` {
      `#{this}.ide.setValue(#{value})`
    }
  }

  style root {
    min-height: 0;
    display: grid;
  }

  fun render : Html {
    <div::root as base/>
  }
}
