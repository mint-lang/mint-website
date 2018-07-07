/* The store for the application. */
store Application {
  /* The current page. */
  property page : Page = Page::Home

  /* The mobile menu is visible or not. */
  property menu : Bool = false

  /* Toggles the mobile menu. */
  fun toggleMenu : Void {
    next { state | menu = !menu }
  }

  /* Closes the mobile menu. */
  fun closeMenu : Void {
    next { state | menu = false }
  }

  /* Sets the current page. */
  fun setPage (page : Page) : Void {
    do {
      Http.abortAll()

      next
        { state |
          page = page,
          menu = false
        }
    }
  }
}
