/* The store for the application. */
store Application {
  /* The current page. */
  state page : Page = Page::Home

  /* The mobile menu is visible or not. */
  state menu : Bool = false

  /* Toggles the mobile menu. */
  fun toggleMenu : Promise(Never, Void) {
    next { menu = !menu }
  }

  /* Closes the mobile menu. */
  fun closeMenu : Promise(Never, Void) {
    next { menu = false }
  }

  /* Sets the current page. */
  fun setPage (page : Page) : Promise(Never, Void) {
    sequence {
      Http.abortAll()

      next
        {
          page = page,
          menu = false
        }
    }
  }
}
