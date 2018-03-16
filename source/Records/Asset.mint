record Asset {
  name : String,
  url : String
}

module Asset {
  fun decodeMany (input : JSObject) : Result(Json.Error, Array(Asset)) {
    Json.Decoder.array(decode, input)
  }

  fun decode (input : JSObject) : Result(Json.Error, Asset) {
    with Json.Decoder {
      try {
        url =
          field("browser_download_url", input, string)

        name =
          field("name", input, string)

        Result.ok({
          name = name,
          url = url
        })
      } catch Json.Error => error {
        Result.error(error)
      }
    }
  }
}
