component Lesson {
  /* The previous lesson. */
  property previousLesson : String = ""

  /* The next lesson. */
  property nextLesson : String = ""

  property files : Array(LessonFile) = []

  property instructions : Html = <></>

  property path : String

  /* The contents of each file. */
  state values : Map(String, String) = Map.empty()

  /* The currently shown file. */
  state activeFile : String = ""

  /* The URL of the preview. */
  state previewURL : String = ""

  state currentPath : String = ""

  /* The style for the base. */
  style base {
    grid-template-columns: minmax(33.333%, 32em) auto;
    background: rgba(255,255,255,0.5);
    grid-template-rows: 1fr 1fr;
    height: calc(100vh - 67px);
    display: grid;
  }

  /* The style for the instructions. */
  style instructions {
    padding: 1.5em;
    padding-top: 0.5em;
  }

  style empty {
    grid-row: span 2;
    grid-column: 2;
    display: grid;
  }

  /* The style for the sidebar. */
  style sidebar {
    border-right: 3px double #EEE;
    grid-row: span 2;

    grid-template-rows: auto 1fr auto;
    min-height: 0;
    display: grid;
  }

  /* Styles for the editor. */
  style editor {
    min-height: 0;
    display: grid;

    .CodeMirror {
      height: auto;
    }

    > * > *:last-child {
      display: grid;
      min-height: 0;
      padding: 0;
    }
  }

  /* Styles for the iframe. */
  style iframe {
    width: calc(100% - 1px);
    background: white;
    display: block;
    height: 100%;
    border: 0;
  }

  /* Styles for the toolbar. */
  style toolbar {
    border-top: 3px double #EEE;
    padding: 0.75em 1.5em;

    justify-content: end;
    grid-auto-flow: column;
    align-items: center;
    display: grid;
  }

  /* Styles for the navigation. */
  style navigation {
    border-bottom: 3px double #EEE;
    box-sizing: border-box;
    padding: 0.65em 1.5em;

    grid-template-columns: auto 1fr auto;
    grid-gap: 1em;
    display: grid;
  }

  style ide {
    border-bottom: 3px double #EEE;
    min-height: 0;
    display: grid;

    if Array.size(files) > 1 {
      grid-template-columns: auto 1fr;
    }
  }

  style files {
    border-right: 3px double #EEE;
    padding: 10px 20px;
  }

  style scroll-panel {
    overflow: auto;
  }

  fun componentDidMount {
    let nextActiveFile =
      Maybe.map(files[0], (file : LessonFile) { file.path })

    await next
      {
        activeFile: nextActiveFile or "",
        values:
          Map.fromArray(
            for file of files {
              (#(file.path, file.contents))
            })
      }

    compile()
  }

  fun componentDidUpdate {
    if currentPath != path {
      let nextActiveFile =
        Maybe.map(files[0], (file : LessonFile) { file.path })

      await next
        {
          activeFile: nextActiveFile or "",
          currentPath: path,
          previewURL: "",
          values:
            Map.fromArray(
              for file of files {
                (#(file.path, file.contents))
              })
        }

      compile()
    }
  }

  /* Sets the currently shown file. */
  fun setFile (path : String) {
    next { activeFile: path }
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
      await "https://mint-sandbox-0190.szikszai.co/compile"
      |> Http.post()
      |> Http.jsonBody(data)
      |> Http.send()

    Url.revokeObjectUrl(previewURL)

    if let Result.Ok(response) = compileResponse {
      next { previewURL: Url.createObjectUrlFromString(response.bodyString, "text/html") }
    }
  }

  /* Shows the soltion of the current lesson. */
  fun handleShowSolution (event : Html.Event) {
    next
      {
        values:
          Map.fromArray(
            for file of files {
              (#(
                file.path, if String.isNotBlank(file.solution) {
                  file.solution
                } else {
                  file.contents
                }
              ))
            })
      }

    compile()
  }

  /* Renders the component. */
  fun render : Html {
    let solutionLessons =
      Array.select(
        files,
        (file : LessonFile) {
          String.isNotBlank(file.solution)
        })

    let hasSolution =
      !Array.isEmpty(solutionLessons)

    let isSolution =
      Array.any(
        solutionLessons,
        (file : LessonFile) {
          Map.getWithDefault(values, file.path, "") == file.solution
        })

    let darkMode =
      false

    <div::base>
      <div::sidebar>
        <div::navigation>
          <Icon
            disabled={String.isBlank(previousLesson)}
            icon={TablerIcons.ARROW_LEFT}
            onClick={
              (event : Html.Event) {
                if previousLesson == "/" {
                  Window.navigate("/learn")
                } else {
                  Window.navigate("/learn#{previousLesson}")
                }
              }
            }/>

          /*
          <select
                      onChange={(event : Html.Event) { Dom.getValue(event.target) }}
                      value={path}/>
          */
          <div/>

          <Icon
            onClick={(event : Html.Event) { Window.navigate("/learn#{nextLesson}") }}
            disabled={String.isBlank(nextLesson)}
            icon={TablerIcons.ARROW_RIGHT}/>
        </div>

        <div::scroll-panel>
          <div::instructions key={path}>
            <Content fontSize={16}>
              instructions
            </Content>
          </div>
        </div>

        <div::toolbar>
          if hasSolution {
            if isSolution {
              <{  }>
            } else {
              <div onClick={handleShowSolution}>
                "Next"
                TablerIcons.EYE_BOLT
              </div>
            }
          }

          <LabelledIcon
            icon={TablerIcons.ARROW_RIGHT}
            onClick={(event : Html.Event) { Window.navigate("/learn#{nextLesson}") }}
            label=<{ "Next" }>/>
        </div>
      </div>

      if Array.isEmpty(files) {
        <div::empty>
          /*
          <Ui.IllustratedMessage
                      subtitle=<{ "This chapter does not have an interactive example." }>
                      title=<{ "Read and Relax" }>
                      image=<{
                        <Ui.Icon
                          icon={TablerIcons:BOOK}
                          size={Ui.Size::Em(10)}/>
                      }>/>
          */
        </div>
      } else {
        <>
          <div::ide>
            if Array.size(files) > 1 {
              <div::files>
                for file of files {
                  <div onClick={() { setFile(file.path) }}>
                    <{ file.path }>
                  </div>
                }
              </div>
            }

            <div::editor>
              {
                let activeFile =
                  Array.find(files, (file : LessonFile) { file.path == activeFile })

                if let Maybe.Just(file) = activeFile {
                  <div style="display:grid;min-height:0;">
                    <CodeMirror
                      value={Map.get(values, file.path) or file.contents}
                      onChange={updateValue(file.path)}
                      javascripts=[
                        @asset(../../assets/codemirror.min.js),
                        @asset(../../assets/codemirror.simple-mode.js),
                        @asset(../../assets/codemirror.mint.js)
                      ]
                      styles=[
                        @asset(../../assets/codemirror.min.css),
                        @asset(../../assets/codemirror.light.css)
                      ]
                      theme={
                        if darkMode {
                          "dark"
                        } else {
                          "light"
                        }
                      }
                      mode="mint"/>
                  </div>
                }
              }
            </div>
          </div>

          <div>
            <iframe::iframe src={previewURL}/>
          </div>
        </>
      }
    </div>
  }
}
