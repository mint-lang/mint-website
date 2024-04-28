store Application {
  // A state to track tablet breakpoint
  state isTablet : Bool = Window.mediaQueryState("(max-width: 1200px)", -> isTablet)

  // A state to track mobile breakpoint
  state isMobile : Bool = Window.mediaQueryState("(max-width: 768px)", -> isMobile)

  // A state to track mobile menu.
  state isMobileMenuOpen : Bool = false

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
      Tutorial => true
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

  // Shows the mobile menu.
  fun showMobileMenu : Promise(Void) {
    next { isMobileMenuOpen: true }
  }

  // Hides the mobile menu.
  fun hideMobileMenu : Promise(Void) {
    next { isMobileMenuOpen: false }
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

      Stores.Lesson.reset(
        {
          activeFile: activeFile,
          files: data.files
        })

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

  // Sets the page to the not found one.
  fun setNotFoundPage : Promise(Void) {
    setPage(Page.NotFound)
  }

  // Sets the page.
  fun setPage (page : Page) : Promise(Void) {
    let title =
      case page {
        Tutorial(title) => Array.unshift(title, "Tutorial")
        NotFound => ["404"]

        Page(title) =>
          if String.isNotBlank(title) {
            [title]
          }

        // Reference / Language / Literals
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

    // Hides the header dropdown menu.
    Dom.blurActiveElement()
    Window.setTitle(final)

    next
      {
        isMobileMenuOpen: false,
        page: page
      }
  }
}
