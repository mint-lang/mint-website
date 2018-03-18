component Main {
  connect Application exposing { page, setPage }
  connect Ui exposing { theme }

  fun componentDidMount : Void {
    do {
      Ui.setFontFamily("Open Sans")
    }
  }

  style iframe {
    visibility: hidden;
    display: none;
  }

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
        name = "roadmap",
        contents = <Roadmap/>
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
      <script>
        <{
          "(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start" \
          "':new Date().getTime(),event:'gtm.js'});var f=d.getEleme" \
          "ntsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer" \
          "'?'&l='+l:'';j.async=true;j.src='https://www.googletagma" \
          "nager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f" \
          ");})(window,document,'script','dataLayer','GTM-TJJ8DCX')" \
          ";"
        }>
      </script>,
      <Layout>
        <{ content }>
      </Layout>,
      <noscript>
        <iframe::iframe
          src="https://www.googletagmanager.com/ns.html?id=GTM-TJJ8DCX"
          height="0"
          width="0"/>
      </noscript>
    ]
  } where {
    content =
      pages
      |> Array.find(\item : Ui.Pager.Item => item.name == page)
      |> Maybe.map(\item : Ui.Pager.Item => item.contents)
      |> Maybe.withDefault(<div/>)
  }
}
