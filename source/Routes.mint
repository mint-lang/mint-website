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

  /tutorial*path (path : String) {
    Application.loadTutorial(path)
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

  * {
    Application.setNotFoundPage()
  }
}
