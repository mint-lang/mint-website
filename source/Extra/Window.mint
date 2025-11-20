module Window {
  // Returns whether or not the given media query matches and subscribes to it.
  fun mediaQueryState (query : String, listener : Function(Bool, a)) : Bool {
    Window.addMediaQueryListener(query, listener)
    matchesMediaQuery(query)
  }

  fun reload : Promise(Void) {
    `window.location.reload()`
  }
}
