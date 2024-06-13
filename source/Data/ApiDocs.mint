module ApiDocs {
  const DOCS =
    defer {
      let json =
        @inline(../../assets/docs.json)

      let Ok(object) =
        Json.parse(json) or return []

      let Ok(decoded) =
        decode object as Array(TopLevelEntity) or return []

      Array.sortBy(decoded, .name(TopLevelEntity))
    }
}
