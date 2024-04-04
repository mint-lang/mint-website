routes {
  /install {
    Application.setPage(Page.Page("Install", <Pages.Install/>))
  }

  /brand-book {
    Application.setPage(Page.Page("Brand Book", <Pages.BrandBook/>))
  }

  /reference*path (path : String) {
    Application.loadDocuments(
      deferredDocuments: Data.REFERENCE,
      basePath: "reference",
      title: "Reference",
      path: path)
  }

  /guides*path (path : String) {
    Application.loadDocuments(
      deferredDocuments: Data.GUIDES,
      basePath: "guides",
      title: "Guides",
      path: path)
  }

  /tutorial*path (path : String) {
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

      Application.setPage(
        Page.Tutorial(
          previousLessonPath: previousLessonPath,
          title: [item.category, item.title],
          nextLessonPath: nextLessonPath,
          path: normalizedPath,
          lessons: lessons,
          lesson: data))
    } else {
      Application.setNotFoundPage()
    }
  }

  / {
    Application.setPage(Page.Page("", <Pages.Home/>))
  }

  * {
    Application.setNotFoundPage()
  }
}
