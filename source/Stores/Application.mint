store Application {
  state page : Page = Page.Initial

  /* Whether or not to show dark mode. */
  state mobile : Bool = Window.matchesMediaQuery("(max-width: 1000px)")

  /* A media query listener for to set mobile property. */
  state mediaQueryListener =
    Window.addMediaQueryListener(
      "(max-width: 1000px)",
      (active : Bool) { next { mobile: active } })

  get isWide : Bool {
    case page {
      Tutorial => true
      => false
    }
  }

  fun loadDocuments (
    path : String,
    basePath : String,
    title : String,
    deferredDocuments : Deferred(Documents)
  ) {
    let normalizedPath =
      if String.isBlank(path) {
        Window.setUrl("/#{basePath}/")
        "/"
      } else {
        path
      }

    let documents =
      await deferredDocuments

    let pages =
      Array.concat(
        [
          Array.concat(
            for category of documents.categories {
              for page of category.pages {
                #("/#{category.path}/#{page.path}", page, Maybe.Just(category))
              }
            }),
          for page of documents.pages {
            #("/#{page.path}", page, Maybe.Nothing)
          }
        ])

    let currentPage =
      for item of pages {
        #(item[1], item[2])
      } when {
        item[0] == normalizedPath
      }

    if let [#(item, category)] = currentPage {
      let contents =
        await item.contents

      setPage(
        Page.Documents(
          documents: documents,
          category: category,
          contents: contents,
          basePath: basePath,
          document: item,
          title: title))
    } else {
      setNotFoundPage()
    }
  }

  fun setNotFoundPage {
    setPage(Page.Page("404", <Pages.NotFound/>))
  }

  fun setPage (page : Page) {
    let title =
      case page {
        Page(title) =>
          if String.isNotBlank(title) {
            [title]
          }

        Tutorial(title) =>
          Array.unshift(title, "Tutorial")

        Documents(category, document, title) =>
          [
            title,
            Maybe.map(category, .name(DocumentCategory)) or "",
            document.name
          ]

        => []
      }

    let head =
      title
      |> Array.reject(String.isBlank)
      |> String.join(" / ")

    let final =
      if String.isEmpty(head) {
        "Mint Programming Language"
      } else {
        "#{head} - Mint Programming Language"
      }

    Window.setTitle(final)
    Dom.blurActiveElement()
    await next { page: page }
    await Timer.nextFrame()
    Window.triggerJump()
  }
}
