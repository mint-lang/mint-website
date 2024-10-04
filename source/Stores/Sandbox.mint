type Sandbox.Page {
  Recent(Array(Sandbox.Project))
  Initial
  Error
}

type User {
  nickname : String,
  image : String,
  id : Number
}

type Sandbox.Project {
  mintVersion : String using "mint_version",
  createdAt : Time using "created_at",
  updatedAt : Time using "updated_at",
  userId : Number using "user_id",
  content : String,
  title : String,
  id : String,
  user : User
}

store Sandbox {
  state page : Sandbox.Page = Sandbox.Page.Initial

  fun send (
    raw : Http.Request,
    decoder : Function(Object, Result(Object.Error, a))
  ) : Promise(Result(Void, a)) {
    let Ok(response) =
      await Http.send(raw) or return Result.Err(void)

    let JSON(object) =
      response.body or return Result.Err(void)

    let Ok(value) =
      decoder(object) or return Result.Err(void)

    Result.Ok(value)
  }

  fun recent : Promise(Void) {
    let request =
      "#{@ENDPOINT}/sandbox/recent"
      |> Http.get()
      |> Http.withCredentials(true)

    case await send(request, decode as Array(Sandbox.Project)) {
      Ok(projects) => next { page: Sandbox.Page.Recent(projects) }
      Err => next { page: Sandbox.Page.Error }
    }
  }
}
