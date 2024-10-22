routes {
  // Standalone pages.
  // ---------------------------------------------------------------------------
  /brand-book {
    Application.setPage(Page.Page("Brand Book", <Pages.BrandBook/>))
  }

  /checklist {
    Application.setPage(Page.Page("Checklist", <Pages.Checklist/>))
  }

  /install {
    Application.setPage(Page.Page("Install", <Pages.Install/>))
  }

  / {
    Application.setPage(Page.Page("", <Pages.Home/>))
  }

  // Sandbox.
  // ---------------------------------------------------------------------------
  /sandbox*path (path : String) await {
    Sandbox.initialize(path)
  }

  // API documentation.
  // ---------------------------------------------------------------------------
  /api*path (path : String) await {
    let normalized =
      String.chopStart(path, "/")

    let entities =
      await ApiDocs.DOCS

    if String.isBlank(normalized) {
      if let Just(item) = entities[0] {
        Window.setUrl("/api/#{item.name}")
        Application.setPage(Page.ApiDocs(entities, item))
      } else {
        Application.setNotFoundPage()
      }
    } else {
      let entity =
        if let Just(item) = Array.find(entities,
          (item : TopLevelEntity) { item.link == Maybe.Just(normalized) }) {
          Maybe.Just(item)
        } else {
          Array.find(entities,
            (item : TopLevelEntity) {
              item.link == Maybe.Nothing && item.name == normalized
            })
        }

      if let Just(item) = entity {
        Application.setPage(Page.ApiDocs(entities, item))
      } else {
        Application.setNotFoundPage()
      }
    }
  }

  // News
  // ---------------------------------------------------------------------------
  /news*path (path : String) await {
    let data =
      await Data.NEWS

    let normalized =
      String.chopStart(path, "/")

    if String.isBlank(normalized) {
      Application.setPage(Page.Page("News", <Pages.News.Index news={data}/>))
    } else if let Just(news) = Map.get(data, normalized) {
      let contents =
        await news.contents

      Application.setPage(
        Page.Page(news.title,
          <Pages.News.Page news={news} contents={contents}/>))
    } else {
      Application.setNotFoundPage()
    }
  }

  // Tutorial.
  // ---------------------------------------------------------------------------
  /tutorial*path (path : String) await {
    Application.loadTutorial(path)
  }

  // Reference and guides.
  // ---------------------------------------------------------------------------
  /reference*path (path : String) await {
    Application.loadDocuments(
      deferredDocuments: Data.REFERENCE,
      basePath: "reference",
      title: "Reference",
      path: path)
  }

  /guides*path (path : String) await {
    Application.loadDocuments(
      deferredDocuments: Data.GUIDES,
      basePath: "guides",
      title: "Guides",
      path: path)
  }

  * {
    Application.setNotFoundPage()
  }
}
