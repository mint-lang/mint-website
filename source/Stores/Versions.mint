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

      versions =
        response.body
        |> Json.parse()
        |> Version.decodeMany()

      sortedVersions =
        versions
        |> Array.sortBy(\version : Version => version.date)
        |> Array.reverse()

      next
        { state |
          versions = sortedVersions,
          stale = false
        }
    } catch Http.Error => error {
      Debug.log(error)
    } catch Json.Error => error {
      Debug.log(error)
    } finally {
      next { state | loading = false }
    }
  }
}
