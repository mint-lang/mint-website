record User {
  firstName : String,
  lastName : String,
  createdAt : Time,
  updatedAt : Time,
  status : String,
  id : Number
}

store Users.List {
  property users : Array(User) = []

  property user : User = {
    createdAt = Time.now(),
    updatedAt = Time.now(),
    firstName = "",
    lastName = "",
    status = "",
    id = 0
  }

  property loading : Bool = false
  property stale : Bool = true
  property error : String = ""

  property perPage : Number = 10
  property page : Number = 0

  fun decodeUser (input : Object) : Result(Object.Error, User) {
    with Object.Decode {
      try {
        firstName =
          field("first_name", string, input)

        lastName =
          field("last_name", string, input)

        createdAt =
          field("created_at", time, input)

        updatedAt =
          field("updated_at", time, input)

        status =
          field("status", string, input)

        id =
          field("id", number, input)

        Result.ok(
          {
            createdAt = createdAt,
            updatedAt = updatedAt,
            firstName = firstName,
            lastName = lastName,
            status = status,
            id = id
          })
      } catch Object.Error => e {
        Result.error(e)
      }
    }
  }

  fun decodeUsers (input : Object) : Result(Object.Error, Array(User)) {
    Object.Decode.array(decodeUser, input)
  }

  fun endpoint : String {
    "https://mint-website.herokuapp.com/"
  }

  fun refresh : Void {
    if (stale) {
      load()
    } else {
      void
    }
  }

  fun load : Void {
    do {
      next { state | loading = true }

      response =
        endpoint() + "users"
        |> Http.get()
        |> Http.send()

      object =
        response.body
        |> Json.parse()
        |> Maybe.toResult("Json error!")

      users =
        decodeUsers(object)

      sortedUsers =
        Array.sort(\a : User, b : User => a.id - b.id, users)

      next
        { state |
          stale = false,
          users = sortedUsers,
          error = ""
        }
    } catch Http.ErrorResponse => error {
      next { state | error = "Error" }
    } catch String => error {
      next { state | error = error }
    } catch Object.Error => error {
      next { state | error = "Error" }
    } finally {
      next { state | loading = false }
    }
  }

  fun resetUser : Void {
    next
      { state |
        user =
          {
            createdAt = Time.now(),
            updatedAt = Time.now(),
            status = "active",
            firstName = "",
            lastName = "",
            id = 0
          },
        error = ""
      }
  }

  fun saveUser : Void {
    do {
      next { state | loading = true }

      endpoint() + "users/" + Number.toString(user.id)
      |> Http.put()
      |> Http.header("Content-Type", "application/json")
      |> Http.stringBody(stringifyUser())
      |> Http.send()

      next { state | stale = true }
    } catch Http.ErrorResponse => error {
      next { state | error = "Error" }
    } finally {
      next { state | loading = false }
    }
  }

  fun deleteUser : Void {
    do {
      next { state | loading = true }

      endpoint() + "users/" + Number.toString(user.id)
      |> Http.delete()
      |> Http.send()

      next { state | stale = true }
    } catch Http.ErrorResponse => error {
      next { state | error = "Error" }
    } finally {
      next { state | loading = false }
    }
  }

  fun createUser : Void {
    do {
      next { state | loading = true }

      endpoint() + "users"
      |> Http.post()
      |> Http.header("Content-Type", "application/json")
      |> Http.stringBody(stringifyUser())
      |> Http.send()

      next { state | stale = true }
    } catch Http.ErrorResponse => error {
      next { state | error = "Error" }
    } finally {
      next { state | loading = false }
    }
  }

  fun stringifyUser : String {
    with Object.Encode {
      object(
        [
          field("first_name", string(user.firstName)),
          field("last_name", string(user.lastName)),
          field("status", string(user.status))
        ])
      |> Json.stringify()
    }
  }

  fun getUser (id : Number) : Void {
    do {
      next { state | loading = true }

      response =
        endpoint() + "users/" + Number.toString(id)
        |> Http.get()
        |> Http.send()

      object =
        response.body
        |> Json.parse()
        |> Maybe.toResult("Json Error")

      user =
        decodeUser(object)

      next { state | user = user }
    } catch Http.ErrorResponse => error {
      next { state | error = "error" }
    } catch String => error {
      next { state | error = error }
    } catch Object.Error => error {
      next { state | error = "error" }
    } finally {
      next { state | loading = false }
    }
  }

  fun updateUserStatus (user : User, isLocked : Bool) : Void {
    do {
      setUser(user)
      setStatus(isLocked)
      saveUser()
      refresh()
    }
  }

  fun setPage (page : Number) : Void {
    next { state | page = page }
  }

  fun setFirstName (firstName : String) : Void {
    next { state | user = { user | firstName = firstName } }
  }

  fun setLastName (lastName : String) : Void {
    next { state | user = { user | lastName = lastName } }
  }

  fun setStatus (isLocked : Bool) : Void {
    next { state | user = { user | status = newStatus } }
  } where {
    newStatus =
      if (isLocked) {
        "locked"
      } else {
        "active"
      }
  }

  fun setUser (user : User) : Void {
    next { state | user = user }
  }
}
