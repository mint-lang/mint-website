component Main {
  connect Examples.Store exposing { userManagement, drag, fileHandling, counter }
  connect Application exposing { page, setPage }
  connect Ui exposing { theme }

  fun componentDidMount : Void {
    do {
      Ui.setFontFamily("Open Sans")
    }
  }

  get pages : Array(Ui.Pager.Item) {
    [
      {
        name = "home",
        contents = <Home/>
      },
      {
        name = "try",
        contents = <Pages.Try/>
      },
      {
        name = "install",
        contents = <Install/>
      },
      {
        name = "examples",
        contents = <Examples/>
      },
      {
        name = "roadmap",
        contents = <Roadmap/>
      },
      {
        name = "file-handling",
        contents =
          <Example
            subTitle={fileHandling.description}
            title={fileHandling.title}>

            <Examples.FileHandling/>

          </Example>
      },
      {
        name = "counter",
        contents =
          <Example
            subTitle={counter.description}
            title={counter.title}>

            <Counter/>

          </Example>
      },
      {
        name = "drag",
        contents =
          <Example
            subTitle={drag.description}
            title={drag.title}>

            <Drag/>

          </Example>
      },
      {
        name = "index",
        contents =
          <Example
            subTitle={userManagement.description}
            title={userManagement.title}>

            <Users.Layout>
              <Users.Table/>
            </Users.Layout>

          </Example>
      },
      {
        name = "new",
        contents =
          <Example
            subTitle={userManagement.description}
            title={userManagement.title}>

            <Users.Layout>
              <UserForm isNew={true}/>
            </Users.Layout>

          </Example>
      },
      {
        name = "user",
        contents =
          <Example
            subTitle={userManagement.description}
            title={userManagement.title}>

            <Users.Layout>
              <UserForm isNew={false}/>
            </Users.Layout>

          </Example>
      },
      {
        name = "not_found",
        contents =
          <div>
            <{ "404" }>
          </div>
      }
    ]
  }

  fun render : Html {
    <Layout>
      <{ content }>
    </Layout>
  } where {
    content =
      pages
      |> Array.find(\item : Ui.Pager.Item => item.name == page)
      |> Maybe.map(\item : Ui.Pager.Item => item.contents)
      |> Maybe.withDefault(<div/>)
  }
}
