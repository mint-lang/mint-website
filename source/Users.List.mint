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

  fun decodeUser (input : JSObject) : Result(Json.Error, User) {
    with Json.Decoder {
      try {
        firstName =
          field("first_name", input, string)

        lastName =
          field("last_name", input, string)

        createdAt =
          field("created_at", input, date)

        updatedAt =
          field("updated_at", input, date)

        status =
          field("status", input, string)

        id =
          field("id", input, number)

        Result.ok(
          {
            createdAt = createdAt,
            updatedAt = updatedAt,
            firstName = firstName,
            lastName = lastName,
            status = status,
            id = id
          })
      } catch Json.Error => e {
        Result.error(e)
      }
    }
  }

  fun decodeUsers (input : JSObject) : Result(Json.Error, Array(User)) {
    input
    |> Json.Decoder.decodeWith(Json.Decoder.array(decodeUser))
  }

  fun endpoint : String {
    "https://js-assessment-backend.herokuapp.com/"
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
        endpoint() + "users.json"
        |> Http.get()
        |> Http.send()

      users =
        response.body
        |> Json.parse()
        |> decodeUsers()

      sortedUsers =
        Array.sort(\a : User, b : User => a.id - b.id, users)

      next
        { state |
          stale = false,
          users = sortedUsers,
          error = ""
        }
    } catch Http.Error => error {
      next { state | error = error.type }
    } catch Json.Error => error {
      next { state | error = error.message }
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

      endpoint() + "users/" + Number.toString(user.id) + ".json"
      |> Http.put()
      |> Http.header("Content-Type", "application/json")
      |> Http.body(stringifyUser())
      |> Http.send()

      next { state | stale = true }
    } catch Http.Error => error {
      next { state | error = error.type }
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
    } catch Http.Error => error {
      next { state | error = error.type }
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
      |> Http.body(stringifyUser())
      |> Http.send()

      next { state | stale = true }
    } catch Http.Error => error {
      next { state | error = error.type }
    } finally {
      next { state | loading = false }
    }
  }

  fun stringifyUser : String {
    with Json.Builder {
      object(
        [
          {
            name = "first_name",
            value = string(user.firstName)
          },
          {
            name = "last_name",
            value = string(user.lastName)
          },
          {
            name = "status",
            value = string(user.status)
          }
        ])
      |> Json.stringify()
    }
  }

  fun getUser (id : Number) : Void {
    do {
      next { state | loading = true }

      response =
        endpoint() + "users/" + Number.toString(id) + ".json"
        |> Http.get()
        |> Http.send()

      user =
        response.body
        |> Json.parse()
        |> decodeUser()

      next { state | user = user }
    } catch Http.Error => error {
      next { state | error = error.type }
    } catch Json.Error => error {
      next { state | error = error.message }
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
