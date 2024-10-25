module Data {
  const PACKAGES =
    defer [
      {
        readme: "https://github.com/mint-lang/mint-color/blob/master/README.md",
        url: "https://github.com/mint-lang/mint-color",
        name: "mint-color",
        version: "0.10.0",
        documentation:
          defer ApiDocs.decodeDocs(
            @inline(../../assets/packages/mint-color.json))
      }
    ]
}
