component Main {
  connect Application exposing { page, setPage }

  get pages : Array(Ui.Pager.Item) {
    [
      {
        name = "examples",
        contents = <Examples/>
      },
      {
        name = "file-handling",
        contents = <Examples.FileHandling/>
      },
      {
        name = "home",
        contents = <Home/>
      },
      {
        name = "index",
        contents =
          <Users.Layout>
            <Users.Table/>
          </Users.Layout>
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
        name = "install",
        contents = <Install/>
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

  fun render : Array(Html) {
    [
      <Layout>
        <{ content }>
      </Layout>
    ]
  } where {
    content =
      pages
      |> Array.find(\item : Ui.Pager.Item => item.name == page)
      |> Maybe.map(\item : Ui.Pager.Item => item.contents)
      |> Maybe.withDefault(<div/>)
  }
}
