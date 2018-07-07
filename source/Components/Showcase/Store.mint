/* A store for the showcase. */
store Showcase.Store {
  /* The active showcase item. */
  property active : String = "store"

  /* The hovered showcase item. */
  property over : String = ""

  /* Sets the active showcase item. */
  fun setActive (active : String) : Void {
    next { state | active = active }
  }

  /* Sets the hovered showcase item. */
  fun setOver (over : String) : Void {
    next { state | over = over }
  }
}
