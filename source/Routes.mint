routes {
  /install {
    Application.setPage(Page.Install)
  }

  /reference*path (path : String) {
    Application.loadDocuments(
      deferredDocuments: Data.REFERENCE,
      basePath: "reference",
      title: "Reference",
      path: path)
  }

  /guides*path (path : String) {
    Application.loadDocuments(
      deferredDocuments: Data.GUIDES,
      basePath: "guides",
      title: "Guides",
      path: path)
  }

  /tutorial*path (path : String) {
    let lesson =
      Array.find(Lessons.ITEMS, (lesson : Tuple(String, Deferred(Lesson))) { lesson[0] == path })

    if let Maybe.Just(item) = lesson {
      let x =
        await item[1]

      Application.setPage(Page.Learn(path, x))
    } else {
      Application.setPage(Page.NotFound)
    }
  }

  / {
    Application.setPage(Page.Home)
  }

  * {
    Application.setPage(Page.NotFound)
  }
}
