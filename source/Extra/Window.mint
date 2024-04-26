module Window {
  // Returns wether or not the given media query matches and subscribes to it.
  fun mediaQueryState (query : String, listener : Function(Bool, a)) : Bool {
    Window.addMediaQueryListener(query, listener)
    matchesMediaQuery(query)
  }
}
