store Application {
  property page : String = ""

  fun setPage (a : String) : Void {
    do {
      Http.abortAll()
      next { state | page = a }
    }
  }
}
