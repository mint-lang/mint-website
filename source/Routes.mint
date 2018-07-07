/* The possible pages. */
enum Page {
  NotFound
  Examples
  Install
  Roadmap
  Home
  Try
}

routes {
  /examples/counter {
    do {
      Application.setPage(Page::Try)
      Stores.Try.init("/sources/counter.mint")
    }
  }

  /examples/drag {
    do {
      Application.setPage(Page::Try)
      Stores.Try.init("/sources/drag.mint")
    }
  }

  /examples/file-handling {
    do {
      Application.setPage(Page::Try)
      Stores.Try.init("/sources/file-handling.mint")
    }
  }

  /try {
    do {
      Application.setPage(Page::Try)
      Stores.Try.init("/sources/counter.mint")
    }
  }

  /examples {
    Application.setPage(Page::Examples)
  }

  /install {
    Application.setPage(Page::Install)
  }

  /roadmap {
    Application.setPage(Page::Roadmap)
  }

  / {
    Application.setPage(Page::Home)
  }

  * {
    Application.setPage(Page::NotFound)
  }
}
