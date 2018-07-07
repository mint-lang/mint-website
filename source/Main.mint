component Main {
  connect Application exposing { page, setPage }

  get content : Html {
    case (page) {
      Page::Examples => <Pages.Examples/>
      Page::NotFound => <Pages.NotFound/>
      Page::Roadmap => <Pages.Roadmap/>
      Page::Install => <Pages.Install/>
      Page::Home => <Pages.Home/>
      Page::Try => <Pages.Try/>
    }
  }

  fun render : Html {
    <Layout>
      <{ content }>
    </Layout>
  }
}
