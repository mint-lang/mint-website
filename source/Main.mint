component Main {
  connect Examples.Store exposing { drag, fileHandling, counter }
  connect Application exposing { page, setPage }

  get content : Html {
    case (page) {
      Page::Examples => <Examples/>
      Page::Roadmap => <Pages.Roadmap/>
      Page::Install => <Pages.Install/>
      Page::Home => <Pages.Home/>
      Page::Try => <Pages.Try/>

      Page::ExampleFile =>
        <Example
          subTitle={fileHandling.description}
          title={fileHandling.title}
          src={fileHandling.src}>

          <Examples.FileHandling/>

        </Example>

      Page::ExampleCounter =>
        <Example
          subTitle={counter.description}
          title={counter.title}
          src={counter.src}>

          <Counter/>

        </Example>

      Page::ExampleDrag =>
        <Example
          subTitle={drag.description}
          title={drag.title}
          src={drag.src}>

          <Drag/>

        </Example>

      Page::NotFound =>
        <div>
          <{ "404" }>
        </div>
    }
  }

  fun render : Html {
    <Layout>
      <{ content }>
    </Layout>
  }
}
