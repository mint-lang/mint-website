component Main {
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
        contents = <Examples.FileHandling/>
      },
      {
        name = "counter",
        contents = <Counter/>
      },
      {
        name = "drag",
        contents = <Drag/>
      },
      {
        name = "index",
        contents =
          <Users.Layout>
            <Users.Table/>
          </Users.Layout>
      },
      {
        name = "new",
        contents =
          <Users.Layout>
            <UserForm isNew={true}/>
          </Users.Layout>
      },
      {
        name = "user",
        contents =
          <Users.Layout>
            <UserForm isNew={false}/>
          </Users.Layout>
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
