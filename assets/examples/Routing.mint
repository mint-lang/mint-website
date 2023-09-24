routes {
  / {
    Application.setPage(Page::Home)
  }

  /blog {
    Application.setPage(Page::Blog)
  }

  /blog/:slug (slug : String) {
    Posts.load(slug)
    Application.setPage(Page::Post)
  }

  * {
    Application.setPage(Page::NotFound)
  }
}
