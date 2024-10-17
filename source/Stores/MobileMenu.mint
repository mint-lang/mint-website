store Stores.MobileMenu {
  // The items to show.
  state items : Array(MenuItem) = []

  // Whether or not the mobile menu is open.
  state open : Bool = false

  // Hides the mobile menu.
  fun hide : Promise(Void) {
    next { open: false }
  }

  // Shows the mobile menu.
  fun show (items : Array(MenuItem)) : Promise(Void) {
    next { open: true, items: items }
  }
}
