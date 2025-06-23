routes {
  // Standalone pages.
  // ---------------------------------------------------------------------------
  /feature-matrix {
    Application.setPage(Page.FeatureMatrix)
  }

  /brand-book {
    Application.setPage(Page.Page("Brand Book", <Pages.BrandBook/> or <Loader/>))
  }

  /checklist {
    Application.setPage(Page.Page("Checklist", <Pages.Checklist/> or <Loader/>))
  }

  /install {
    Application.setPage(Page.Page("Install", <Pages.Install/> or <Loader/>))
  }

  / {
    Application.setPage(Page.Page("", <Pages.Home/> or <Loader/>))
  }

  // Sandbox.
  // ---------------------------------------------------------------------------
  /sandbox*path (path : String) await {
    Sandbox.initialize(path)
  }

  // Packages
  // ---------------------------------------------------------------------------
  /packages*path (path : String) await {
    Packages.load(path)
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
        Window.setUrl("/api/#{item.link}")
        Application.setPage(Page.ApiDocs("/api", entities, item, Maybe.Nothing))
      } else {
        Application.setNotFoundPage()
      }
    } else {
      let entity =
        if let Just(item) = Array.find(entities,
          (item : TopLevelEntity) { item.link == normalized }) {
          Maybe.Just(item)
        }

      if let Just(item) = entity {
        Application.setPage(Page.ApiDocs("/api", entities, item, Maybe.Nothing))
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
      Application.setPage(
        Page.Page("News", <Pages.News.Index news={data}/> or <Loader/>))
    } else if let Just(news) = Map.get(data, normalized) {
      let contents =
        await news.contents

      Application.setPage(
        Page.Page(news.title,
          <Pages.News.Page news={news} contents={contents}/> or <Loader/>))
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

  // From
  // ---------------------------------------------------------------------------
  /from*path (path : String) await {
    Application.loadFrom(deferred: Data.FROM, path: path)
  }

  * {
    Application.setNotFoundPage()
  }
}
