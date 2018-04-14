routes {
  /users/new {
    do {
      Application.setPage("new")
      Users.List.resetUser()
    }
  }

  /users/:id (id : Number) {
    do {
      Application.setPage("user")
      Users.List.resetUser()
      Users.List.getUser(id)
    }
  }

  /users?page=:page (page : String) {
    do {
      Application.setPage("index")
      Users.List.refresh()

      actualPage =
        Number.fromString(page)
        |> Maybe.withDefault(0)

      Users.List.setPage(actualPage)
    }
  }

  /users {
    do {
      Application.setPage("index")
      Users.List.refresh()
      Users.List.setPage(0)
    }
  }

  /counter {
    Application.setPage("counter")
  }

  /drag {
    Application.setPage("drag")
  }

  /examples {
    Application.setPage("examples")
  }

  /examples/file-handling {
    Application.setPage("file-handling")
  }

  /install {
    do {
      Application.setPage("install")
      Versions.refresh()
    }
  }

  /roadmap {
    do {
      Application.setPage("roadmap")
      Versions.refresh()
    }
  }

  / {
    do {
      Application.setPage("home")
      Showcase.Store.setActive("store")
    }
  }

  * {
    Application.setPage("not_found")
  }
}
