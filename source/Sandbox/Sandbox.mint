module Sandbox {
  // The try sandbox.
  const EMPTY_SANDBOX =
    {
      user: { nickname: "Unknown", image: @asset(../../assets/user.png), id: 0 },
      content: @inline(../../assets/Try.mint),
      createdAt: Time.now(),
      updatedAt: Time.now(),
      title: "Mint Sandbox",
      mintVersion: "",
      userId: 0,
      id: ""
    }

  // Initializes a sandbox page.
  fun initialize (page : Sandbox.Page) : Promise(Void) {
    let response =
      "#{@ENDPOINT}/sandbox/user"
      |> Http.get()
      |> send(decode as User)

    let user =
      case await response {
        Ok(user) => UserStatus.LoggedIn(user)
        Err => UserStatus.LoggedOut
      }

    Application.setPage(Page.Sandbox(page, user))
  }

  // Sands a request to the server and decodes the result.
  fun send (
    raw : Http.Request,
    decoder : Function(Object, Result(Object.Error, a))
  ) : Promise(Result(Void, a)) {
    let request =
      raw
      |> Http.header("Content-Type", "application/json")
      |> Http.withCredentials(true)

    let Ok(response) =
      await Http.send(request) or return Result.Err(void)

    let JSON(object) =
      response.body or return Result.Err(void)

    let Ok(value) =
      decoder(object) or return Result.Err(void)

    Result.Ok(value)
  }

  // Logs the user out.
  fun logout : Promise(Void) {
    let response =
      "#{@ENDPOINT}/sandbox/logout"
      |> Http.get()
      |> Http.withCredentials(true)
      |> Http.send()

    case await response {
      Err => Window.alert("Could not log you out!")
      Ok => Window.reload()
    }
  }

  // Deletes the sandbox with the id.
  fun delete (id : String) : Promise(Void) {
    if let Ok = await Window.confirm("Are you sure?") {
      let response =
        "#{@ENDPOINT}/sandbox/#{id}"
        |> Http.delete()
        |> send(decode as Sandbox)

      case await response {
        Err => Window.alert("Could not delete the sandbox!")
        Ok => Window.navigate("/sandbox/mine")
      }
    }
  }

  // Saves the sandbox with the id.
  fun save (
    content : String,
    title : String,
    id : String
  ) : Promise(Result(Void, Sandbox)) {
    // TODO: This with `encode` creates a compiler error for some reason.
    let body =
      `{ content: #{content}, title: #{title} }`

    await "#{@ENDPOINT}/sandbox/#{id}"
    |> Http.put()
    |> Http.jsonBody(body)
    |> send(decode as Sandbox)
  }

  // Loads the sandbox with the id.
  fun load (id : String) : Promise(Sandbox.Page) {
    let response =
      "#{@ENDPOINT}/sandbox/#{id}"
      |> Http.get()
      |> send(decode as Sandbox)

    case await response {
      Ok(projects) => Sandbox.Page.Editor(projects)
      Err => Sandbox.Page.Error
    }
  }

  // Loads the users sandboxes.
  fun mine : Promise(Sandbox.Page) {
    let response =
      "#{@ENDPOINT}/sandbox"
      |> Http.get()
      |> send(decode as Array(Sandbox))

    case await response {
      Ok(projects) => Sandbox.Page.Mine(projects)
      Err => Sandbox.Page.Error
    }
  }

  // Loads recent sandboxes.
  fun recent : Promise(Sandbox.Page) {
    let response =
      "#{@ENDPOINT}/sandbox/recent"
      |> Http.get()
      |> send(decode as Array(Sandbox))

    case await response {
      Ok(projects) => Sandbox.Page.Recent(projects)
      Err => Sandbox.Page.Error
    }
  }

  // Creates a new sandbox.
  fun new : Promise(Void) {
    let response =
      "#{@ENDPOINT}/sandbox"
      |> Http.post()
      |> send(decode as Sandbox)

    case await response {
      Ok(sandbox) => Window.navigate("/sandbox/#{sandbox.id}")
      Err => Window.alert("Could not create a new sandbox!")
    }
  }

  // Forks the sandbox with the id.
  fun fork (id : String) : Promise(Void) {
    let response =
      "#{@ENDPOINT}/sandbox/#{id}/fork"
      |> Http.post()
      |> send(decode as Sandbox)

    case await response {
      Ok(sandbox) => Window.navigate("/sandbox/#{sandbox.id}")
      Err => Window.alert("Could not fork the sandbox!")
    }
  }
}
