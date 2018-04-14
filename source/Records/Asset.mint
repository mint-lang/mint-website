record Asset {
  name : String,
  url : String
}

module Asset {
  fun decodeMany (input : Object) : Result(Object.Error, Array(Asset)) {
    Object.Decode.array(decode, input)
  }

  fun decode (input : Object) : Result(Object.Error, Asset) {
    with Object.Decode {
      try {
        url =
          field("browser_download_url", string, input)

        name =
          field("name", string, input)

        Result.ok({
          name = name,
          url = url
        })
      } catch Object.Error => error {
        Result.error(error)
      }
    }
  }
}
