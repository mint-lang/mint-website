record Version {
  assets : Array(Asset),
  description : String,
  version : String,
  url : String,
  date : Time
}

module Version {
  fun empty : Version {
    {
      date = Time.now(),
      description = "",
      version = "",
      assets = [],
      url = ""
    }
  }

  fun decodeMany (input : Object) : Result(Object.Error, Array(Version)) {
    Object.Decode.array(decode, input)
  }

  fun decode (input : Object) : Result(Object.Error, Version) {
    with Object.Decode {
      try {
        version =
          field("tag_name", string, input)

        date =
          field("published_at", time, input)

        url =
          field("html_url", string, input)

        description =
          field("body", string, input)

        assets =
          field("assets", Asset.decodeMany, input)

        Result.ok(
          {
            description = description,
            version = version,
            assets = assets,
            date = date,
            url = url
          })
      } catch Object.Error => error {
        Result.error(error)
      }
    }
  }
}
