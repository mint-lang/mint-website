/* A store to get the versions of Mint form the website server. */
store Stores.Versions {
  /* The list of versions. */
  state versions : Array(Version) = []

  /* Whether or not the versions are loading. */
  state loading : Bool = true

  /* Whether or not the store is initialized. */
  state initialized : Bool = false

  /* Whether or not the there was an error. */
  state errored : Bool = false

  /* Returns the latest version. */
  get latest : Version {
    versions
    |> Array.first()
    |> Maybe.withDefault(Version.empty())
  }

  /* Refreshes the versions from the server. */
  fun refresh : Promise(Never, Void) {
    if (initialized) {
      Promise.never()
    } else {
      load()
    }
  }

  /* Loads the versions from the server. */
  fun load : Promise(Never, Void) {
    sequence {
      next
        {
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

      newVersions =
        decode object as Array(Version)

      sortedVersions =
        newVersions
        |> Array.sortBy((version : Version) : Time => { version.date })
        |> Array.reverse()

      next
        {
          versions = sortedVersions,
          initialized = true
        }
    } catch {
      next { errored = true }
    } finally {
      next { loading = false }
    }
  }
}
