/* The store for the application. */
store Application {
  /* The current page. */
  state page : Page = Page::Home

  /* The mobile menu is visible or not. */
  state menu : Bool = false

  /* Toggles the mobile menu. */
  fun toggleMenu : Void {
    next { menu = !menu }
  }

  /* Closes the mobile menu. */
  fun closeMenu : Void {
    next { menu = false }
  }

  /* Sets the current page. */
  fun setPage (page : Page) : Void {
    do {
      Http.abortAll()

      next
        {           page = page,
          menu = false
        }
    }
  }
}
