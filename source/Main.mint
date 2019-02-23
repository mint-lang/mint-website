component Main {
  connect Application exposing { page, setPage }

  fun render : Html {
    <Layout>
      case (page) {
        Page::Examples => <Pages.Examples/>
        Page::NotFound => <Pages.NotFound/>
        Page::Roadmap => <Pages.Roadmap/>
        Page::Install => <Pages.Install/>
        Page::Home => <Pages.Home/>
        Page::Try => <Pages.Try/>
      }
    </Layout>
  }
}
