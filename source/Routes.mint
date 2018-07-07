enum Page {
  ExampleCounter
  ExampleDrag
  ExampleFile
  NotFound
  Examples
  Install
  Roadmap
  Home
  Try
}

routes {
  /counter {
    Application.setPage(Page::ExampleCounter)
  }

  /drag {
    Application.setPage(Page::ExampleDrag)
  }

  /examples {
    Application.setPage(Page::Examples)
  }

  /examples/file-handling {
    Application.setPage(Page::ExampleFile)
  }

  /install {
    Application.setPage(Page::Install)
  }

  /roadmap {
    Application.setPage(Page::Roadmap)
  }

  /try {
    Application.setPage(Page::Try)
  }

  / {
    do {
      Application.setPage(Page::Home)
      Showcase.Store.setActive("store")
    }
  }

  * {
    Application.setPage(Page::NotFound)
  }
}
