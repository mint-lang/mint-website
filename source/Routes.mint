routes {
  /brand-book {
    Application.setPage(Page.Page("Brand Book", <Pages.BrandBook/>))
  }

  /install {
    Application.setPage(Page.Page("Install", <Pages.Install/>))
  }

  / {
    Application.setPage(Page.Page("", <Pages.Home/>))
  }

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
        if let Just(item) = Array.find(entities, (item : TopLevelEntity) { item.link == Maybe.Just(normalized) }) {
          Maybe.Just(item)
        } else {
          Array.find(entities, (item : TopLevelEntity) { item.link == Maybe.Nothing && item.name == normalized })
        }

      if let Just(item) = entity {
        Application.setPage(Page.ApiDocs(entities, item))
      } else {
        Application.setNotFoundPage()
      }
    }
  }

  /tutorial*path (path : String) await {
    Application.loadTutorial(path)
  }

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
