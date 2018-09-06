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
    sequence {
      Application.setPage(Page::Try)
      Stores.Try.init("/sources/counter.mint")
    }
  }

  /examples/drag {
    sequence {
      Application.setPage(Page::Try)
      Stores.Try.init("/sources/drag.mint")
    }
  }

  /examples/file-handling {
    sequence {
      Application.setPage(Page::Try)
      Stores.Try.init("/sources/file-handling.mint")
    }
  }

  /try {
    sequence {
      Application.setPage(Page::Try)
      Stores.Try.init("/sources/counter.mint")
    }
  }

  /examples {
    Application.setPage(Page::Examples)
  }

  /install {
    parallel {
      Application.setPage(Page::Install)
      Stores.Versions.refresh()
    }
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
