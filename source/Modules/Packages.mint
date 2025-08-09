module Packages {
  // Finds a package and it's top-level entity.
  fun findPackage (packages : Array(Package), name : String, entity : String) {
    if let Just(package) = Array.find(packages,
      (item : Package) { item.name == name }) {
      let entities =
        await package.documentation

      if let Just(entity) = Maybe.oneOf(
        [
          Array.find(entities, (item : TopLevelEntity) { item.link == entity }),
          entities[0]
        ]) {
        let info =
          Maybe.Just(
            {
              title: package.name,
              items:
                [
                  {"Readme", TablerIcons.BOOK, package.readme},
                  {"Source", TablerIcons.BRAND_GITHUB, package.url},
                  {package.version, TablerIcons.VERSIONS, "#{package.url}/releases/tag/#{package.version}"}
                ]
            })

        Maybe.Just({package, entities, entity, info})
      }
    }
  }

  // Loads packages from the path.
  fun load (path : String) {
    let packages =
      await Data.PACKAGES

    let page =
      await case String.split(String.chopStart(path, "/"), "/") {
        [""] =>
          Promise.resolve(
            Maybe.Just(
              Page.Page("Packages", <Pages.Packages packages={packages}/>)))

        [package, entity] =>
          {
            if let Just({package, entities, entity, info}) = await findPackage(
              packages, package, entity) {
              Maybe.Just(
                Page.ApiDocs("/packages/#{package.name}", entities, entity,
                  info))
            }
          }

        [package] =>
          {
            if let Just({package, entities, entity, info}) = await findPackage(
              packages, package, "") {
              Window.setUrl("/packages/#{package.name}/#{entity.name}")

              Maybe.Just(
                Page.ApiDocs("/packages/#{package.name}", entities, entity,
                  info))
            }
          }

        => Promise.resolve(Maybe.Nothing)
      }

    if let Just(item) = page {
      Application.setPage(item)
    } else {
      Application.setNotFoundPage()
    }
  }
}
