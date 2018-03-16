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

  fun decodeMany (input : JSObject) : Result(Json.Error, Array(Version)) {
    Json.Decoder.array(decode, input)
  }

  fun decode (input : JSObject) : Result(Json.Error, Version) {
    with Json.Decoder {
      try {
        version =
          field("tag_name", input, string)

        date =
          field("published_at", input, date)

        url =
          field("html_url", input, string)

        description =
          field("body", input, string)

        assets =
          field("assets", input, Asset.decodeMany)

        Result.ok(
          {
            description = description,
            version = version,
            assets = assets,
            date = date,
            url = url
          })
      } catch Json.Error => error {
        Result.error(error)
      }
    }
  }
}
