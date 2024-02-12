store Application {
  state page : Page = Page.Initial

  get isWide : Bool {
    case page {
      Page.Learn => true
      => false
    }
  }

  fun loadDocuments (path : String, deferredDocuments : Deferred(Docs)) {
    let documents =
      await deferredDocuments

    let pages =
      Array.concat(
        [
          Array.concat(
            for category of documents.categories {
              for page of category.pages {
                #("/#{category.path}/#{page.path}", page)
              }
            }),
          for page of documents.pages {
            #("/#{page.path}", page)
          }
        ])

    let currentPage =
      for item of pages {
        item[1]
      } when {
        item[0] == path
      }

    if let [item] = currentPage {
      let contents =
        await item.contents

      Application.setPage(
        Page.Reference(
          contents: contents,
          docs: documents,
          path: path))
    } else {
      Application.setPage(Page.NotFound)
    }
  }

  fun setPage (page : Page) {
    next { page: page }
  }
}
