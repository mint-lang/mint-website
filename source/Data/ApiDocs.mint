module ApiDocs {
  // Decodes an array of top-level entitites from the given JSON string.
  fun decodeDocs (json : String) : Array(TopLevelEntity) {
    let Ok(object) =
      Json.parse(json) or return []

    let Ok(decoded) =
      decode object as Array(TopLevelEntity) or return []

    Array.sortBy(decoded, .name(TopLevelEntity))
  }

  const DOCS = defer decodeDocs(@inline(../../assets/docs.json))
}
