store Application {
  // A state to track tablet breakpoint
  signal isTablet : Bool {
    Window.mediaQueryState("(max-width: 1200px)", (value : Bool) { emit value })
  }

  // A state to track mobile breakpoint
  signal isMobile : Bool {
    Window.mediaQueryState("(max-width: 768px)", (value : Bool) { emit value })
  }

  // The page we are currently displaying.
  state page : Page = Page.Initial

  // A state to track dark mode.
  state isDarkMode : Bool =
    case Storage.Local.get("dark-mode") {
      Err => Window.matchesMediaQuery("(prefers-color-scheme: dark)")
      Ok(value) => value == "true"
    }

  // Whether or not to use all the width of the screen.
  get isWide : Bool {
    case page {
      FeatureMatrix | Tutorial | Sandbox | Example => true
      => false
    }
  }

  // Sets the dark mode.
  fun setDarkMode (value : Bool) : Promise(Void) {
    case Storage.Local.set("dark-mode", Bool.toString(value)) {
      Err => Debug.log("Could not save dark mode setting to LocalStorage!")
      Ok => ""
    }

    next { isDarkMode: value }
  }

  // Toggles the dark mode.
  fun toggleDarkMode : Promise(Void) {
    setDarkMode(!isDarkMode)
  }

  // Loads the given documents.
  fun loadDocuments (
    deferredDocuments : Deferred(Documents),
    basePath : String,
    title : String,
    path : String
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
          for page of documents.pages {
            {"/#{page.path}", page, Maybe.Nothing}
          },
          Array.concat(
            for category of documents.categories {
              for page of category.pages {
                {"/#{category.path}/#{page.path}", page, Maybe.Just(category)}
              }
            })
        ])

    let currentPage =
      for item of pages {
        {item[1], item[2]}
      } when {
        item[0] == normalizedPath
      }

    if let [{item, category}] = currentPage {
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

  // Loads the tutorial page matching the path.
  fun loadTutorial (path : String) : Promise(Void) {
    let lessons =
      await Data.LESSONS

    let normalizedPath =
      if String.isBlank(path) {
        Window.setUrl("/tutorial/")
        "/"
      } else {
        path
      }

    let lesson =
      Array.find(lessons, (lesson : Lesson) { lesson.path == normalizedPath })

    if let Maybe.Just(item) = lesson {
      let index =
        Array.indexOf(lessons, item) or -1

      let previousLessonPath =
        Maybe.map(lessons[index - 1], .path(Lesson))

      let nextLessonPath =
        Maybe.map(lessons[index + 1], .path(Lesson))

      let data =
        await item.data

      let activeFile =
        (data.files
        |> Array.map(.path(LessonFile))
        |> Array.first) or ""

      Stores.Lesson.reset({ activeFile: activeFile, files: data.files })

      setPage(
        Page.Tutorial(
          previousLessonPath: previousLessonPath,
          title: [item.category, item.title],
          nextLessonPath: nextLessonPath,
          path: normalizedPath,
          lessons: lessons,
          lesson: data))
    } else {
      setNotFoundPage()
    }
  }

  // Loads the comparison pages.
  fun loadFrom (path : String) {
    let data =
      await Data.FROM

    let path =
      if String.isBlank(path) {
        Window.setUrl("/from/")
        ""
      } else {
        String.dropStart(path, 1)
      }

    case path {
      "" => setPage(Page.FromIndex(data))

      =>
        if let Just(data) = Map.get(data, path) {
          setPage(Page.From(await From.MINT, data, await data.data))
        } else {
          setNotFoundPage()
        }
    }
  }

  fun loadExample (path : String) {
    let data =
      await Data.EXAMPLES

    if String.isBlank(path) {
      Window.setUrl("/examples/")
    }

    case String.split(String.dropStart(path, 1), "/") {
      [slug, example] =>
        {
          let result =
            await {
              let Just(category) =
                data[slug] or return Maybe.Nothing

              let Just(example) =
                category[1][example] or return Maybe.Nothing

              let contents =
                await example[1]

              Maybe.Just({category[0], example, contents})
            }

          if let Just({title, example, contents}) = result {
            setPage(Page.Example(example, title, contents))
          } else {
            setNotFoundPage()
          }
        }

      [""] | [] => setPage(Page.ExampleIndex(data))
      => setNotFoundPage()
    }
  }

  fun loadArticles (path : String) {
    let data =
      await Data.NEWS

    let posts =
      await Data.POSTS

    let normalized =
      String.chopStart(path, "/")

    if String.isBlank(normalized) {
      setPage(Page.Articles(data, posts))
    } else if let Just(news) = Map.get(data, normalized) {
      let contents =
        await news.contents

      setPage(Page.Article(news, contents))
    } else if let Just(news) = Map.get(posts, normalized) {
      let contents =
        await news.contents

      setPage(Page.Article(news, contents))
    } else {
      setNotFoundPage()
    }
  }

  // Sets the page to the not found one.
  fun setNotFoundPage : Promise(Void) {
    setPage(Page.NotFound)
  }

  // Sets the page.
  fun setPage (page : Page) : Promise(Void) {
    let title =
      case page {
        Sandbox(page) =>
          case page {
            Editor(project) => ["Sandbox", project.title]
            => ["Sandboxes"]
          }

        Page(title) =>
          if String.isNotBlank(title) {
            [title]
          }

        // Reference / Language / Literals
        Documents(category, _, document, _, _, title) =>
          [
            title,
            Maybe.map(category, .name(DocumentCategory)) or "",
            document.name
          ]

        From(_, from, _) => ["From #{from.title}?"]
        FromIndex(_) => ["From … ?"]

        Example({title, _}, category) => ["Examples", category, title]
        ExampleIndex(data) => ["Examples"]

        Article(article) => [article.title]
        Articles => ["News"]

        Tutorial(_, _, _, title) => Array.unshift(title, "Tutorial")
        ApiDocs(_, _, entity, _) => ["API", entity.name]
        FeatureMatrix => ["Language Feature Matrix"]
        NotFound => ["404"]
        Initial => []
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

    // Hides the header dropdown menu.
    Dom.blurActiveElement()
    Window.setTitle(final)

    next { page: page }
  }
}
