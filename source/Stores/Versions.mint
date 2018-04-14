store Versions {
  property versions : Array(Version) = []
  property loading : Bool = true
  property stale : Bool = true

  fun latest : Version {
    versions
    |> Array.first()
    |> Maybe.withDefault(Version.empty())
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
        "https://mint-website.herokuapp.com/releases"
        |> Http.get()
        |> Http.send()

      object =
        response.body
        |> Json.parse()
        |> Maybe.toResult("Json Error")

      versions
      Version.decodeMany(object)

      sortedVersions =
        versions
        |> Array.sortBy(\version : Version => version.date)
        |> Array.reverse()

      next
        { state |
          versions = sortedVersions,
          stale = false
        }
    } catch Http.ErrorResponse => error {
      Debug.log(error)
    } catch String => error {
      Debug.log(error)
    } catch Object.Error => error {
      Debug.log(error)
    } finally {
      next { state | loading = false }
    }
  }
}
