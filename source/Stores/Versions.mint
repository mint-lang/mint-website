/* A store to get the versions of Mint form the website server. */
store Stores.Versions {
  /* The list of versions. */
  property versions : Array(Version) = []

  /* Whether or not the versions are loading. */
  property loading : Bool = true

  /* Whether or not the store is initialized. */
  property initialized : Bool = false

  /* Whether or not the there was an error. */
  property errored : Bool = false

  /* Returns the latest version. */
  get latest : Version {
    versions
    |> Array.first()
    |> Maybe.withDefault(Version.empty())
  }

  /* Refreshes the versions from the server. */
  fun refresh : Void {
    if (initialized) {
      void
    } else {
      load()
    }
  }

  /* Loads the versions from the server. */
  fun load : Void {
    do {
      next
        { state |
          errored = false,
          loading = true
        }

      response =
        "https://mint-website.herokuapp.com/releases"
        |> Http.get()
        |> Http.send()

      object =
        response.body
        |> Json.parse()
        |> Maybe.toResult("Json Error")

      versions =
        decode object as Array(Version)

      sortedVersions =
        versions
        |> Array.sortBy((version : Version) : Time => { version.date })
        |> Array.reverse()

      Debug.log(encode sortedVersions)
      next
        { state |
          versions = sortedVersions,
          initialized = true
        }
    } catch Http.ErrorResponse => error {
      next { state | errored = true }
    } catch String => error {
      next { state | errored = true }
    } catch Object.Error => error {
      next { state | errored = true }
    } finally {
      next { state | loading = false }
    }
  }
}
