store Showcase.Store {
  property active : String = "store"
  property over : String = ""

  fun setActive (active : String) : Void {
    next { state | active = active }
  }

  fun setOver (over : String) : Void {
    next { state | over = over }
  }
}
