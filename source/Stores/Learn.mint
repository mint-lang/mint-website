/* The data structure for the lesson. */
type Lesson {
  files : Array(LessonFile),
  category : String,
  contents : Html,
  title : String,
  path : String
}

type LessonFile {
  solution : String,
  contents : String,
  title : String,
  path : String
}

/* The file structure for the compiler request. */
record RequestFile {
  contents : String,
  path : String
}

/* The compiler request data structure. */
record RequestData {
  files : Array(RequestFile)
}

store Stores.Learn {
  /* The previous lesson. */
  state previousLesson : Maybe(Lesson) = Maybe::Nothing

  /* The next lesson. */
  state nextLesson : Maybe(Lesson) = Maybe::Nothing

  /* The contents of each file. */
  state values : Map(String, String) = Map.empty()

  /* The currently shown file. */
  state activeFile : String = ""

  /* The current lesson. */
  state lesson : Lesson =
    {
      contents: <></>,
      category: "",
      files: [],
      title: "",
      path: ""
    }

  /* The URL of the preview. */
  state previewURL : String = ""

  /* Sets the currently shown file. */
  fun setFile (path : String) {
    next { activeFile: path }
  }

  /* Sets the lesson to the given one. */
  fun setLesson (lesson : Lesson) {
    let nextActiveFile =
      Maybe.map(lesson.files[0], (lesson : LessonFile) { lesson.path })

    await next
      {
        previousLesson: Lessons.previousLesson(lesson),
        nextLesson: Lessons.nextLession(lesson),
        activeFile: nextActiveFile or "",
        lesson: lesson,
        values:
          Map.fromArray(
            for file of lesson.files {
              ({file.path, file.contents})
            })
      }

    `
    (() => {
      for (let element of document.querySelectorAll(".language-mint:not(.hljs)")) {
        hljs.highlightElement(element)
      }
    })()
    `

    compile()
  }

  /* Shows the soltion of the current lesson. */
  fun showSolution {
    next
      {
        values:
          Map.fromArray(
            for file of lesson.files {
              ({
                file.path, if String.isNotBlank(file.solution) {
                  file.solution
                } else {
                  file.contents
                }
              })
            })
      }

    compile()
  }

  /* Updates the source code of a file and compiles to get the preview URL. */
  fun updateValue (path : String) {
    (value : String) {
      if Map.getWithDefault(values, path, "") == value {
        next { }
      } else {
        next { values: Map.set(values, path, value) }
        (DEBOUNCED_COMPILE)()
      }
    }
  }

  /* Debounced version of the compile function. */
  const DEBOUNCED_COMPILE = Function.debounce(compile, 500)

  /* Compiles the current state ito get the preview URL. */
  fun compile : Promise(Void) {
    let data =
      encode {
        files:
          for path, contents of values {
            {
              contents: contents,
              path: path
            }
          }
      }

    let compileResponse =
      await "https://mint-sandbox-0180.szikszai.co/compile"
      |> Http.post()
      |> Http.jsonBody(data)
      |> Http.send()

    Url.revokeObjectUrl(previewURL)

    if let Result::Ok(response) = compileResponse {
      next { previewURL: Url.createObjectUrlFromString(response.bodyString, "text/html") }
    }
  }
}
