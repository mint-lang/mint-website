store Application {
  property page : Page = Page::Home

  fun setPage (page : Page) : Void {
    do {
      Http.abortAll()
      next { state | page = page }
    }
  }
}
