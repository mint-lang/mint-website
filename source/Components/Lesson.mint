component Lesson {
  /* The path to the previous lesson (if any). */
  property previousLessonPath : Maybe(String)

  /* The path to the next lesson (if any). */
  property nextLessonPath : Maybe(String)

  /* The files to show. */
  property files : Array(LessonFile)

  /* The list of lessons for the select. */
  property lessons : Array(Lesson)

  /* The instructions to show. */
  property instructions : Html

  /* The path of the lesson. */
  property path : String

  /* The contents of each file. */
  state values : Map(String, String) = Map.empty()

  /* The current path of the lesson. */
  state currentPath : String = ""

  /* The currently shown file. */
  state activeFile : String = ""

  state id : String = ""

  /* Styles for the root element. */
  style root {
    grid-template-columns: minmax(33.333%, 32em) auto;
    background: rgba(255, 255, 255, 0.5);
    grid-template-rows: 1fr 1fr;
    height: calc(100vh - 67px);
    display: grid;
  }

  /* Styles for the instructions. */
  style instructions {
    padding: 1.5em;
  }

  /* Styles fot the empty message. */
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

    textarea {
      border: 0;
    }

    .CodeMirror {
      height: auto;
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

    grid-auto-flow: column;
    justify-content: end;
    align-items: center;
    grid-gap: 1.5em;
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

  /* Styles for the IDE. */
  style ide {
    border-bottom: 3px double #EEE;
    min-height: 0;
    display: grid;

    if Array.size(files) > 1 {
      grid-template-columns: auto 1fr;
    }
  }

  /* Styles for the files. */
  style files {
    border-right: 3px double #EEE;
  }

  /* Styles for a file in the file tree. */
  style file (active : Bool) {
    border-bottom: 1px solid #EEE;
    font-weight: normal;
    padding: 7px 20px;
    font-size: 14px;
    cursor: pointer;

    &:hover {
      color: #277944;
    }

    if active {
      background: #F6F6F6;
      color: #277944;
    }
  }

  /* Styles for the scrollable panel. */
  style scroll-panel {
    overflow: auto;
  }

  /* Styles for the select. */
  style select {
    appearance: none;

    border: 1px solid #DDD;
    padding: 0.5em 0.75em;
    background: #FCFCFC;
    border-radius: 3px;

    font-family: Noto Sans;
  }

  /* Debounced version of the compile function. */
  const DEBOUNCED_COMPILE = Function.debounce(compile, 500)

  /* When the component mounts. */
  fun componentDidMount : Promise(Void) {
    let id =
      Storage.Local.get("tutorial-id") or Uid.generate()

    Storage.Local.set("tutorial-id", id)

    await next
      {
        currentPath: path,
        id: id
      }

    await setFirstFileActive()
    compile()
  }

  /* When the component is updated. */
  fun componentDidUpdate : Promise(Void) {
    if currentPath != path {
      await setFirstFileActive()
      await next { currentPath: path }
      compile()
    }
  }

  /* Set the first file as the active one. */
  fun setFirstFileActive : Promise(Void) {
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
  }

  /* Sets the currently shown file. */
  fun setFile (path : String) : Promise(Void) {
    next { activeFile: path }
  }

  /* Updates the source code of a file and compiles to get the preview URL. */
  fun updateValue (value : String) {
    if Map.getWithDefault(values, activeFile, "") == value {
      next { }
    } else {
      next { values: Map.set(values, activeFile, value) }
      (DEBOUNCED_COMPILE)()
    }
  }

  /* Compiles the current state ito get the preview URL. */
  fun compile : Promise(Void) {
    let data =
      encode {
        id: id,
        files:
          for path, contents of values {
            {
              contents: contents,
              path: path
            }
          }
      }

    let compileResponse =
      await "http://localhost:3003/compile"
      |> Http.post()
      |> Http.jsonBody(data)
      |> Http.send()

    if let Result.Ok(response) = compileResponse {
      if let Http.ResponseBody.JSON(object) = response.body {
        if let Result.Ok(decoded) = decode object as LessonResponse {
          if let Maybe.Just(frame) = iframe {
            `
            (() => {
              if (#{frame}) {
                if (#{frame}.src == #{decoded.url}) {
                  #{frame}.contentWindow.location.replace(#{decoded.url});
                } else {
                  #{frame}.src = #{decoded.url};
                }
              }
            })()
            `
          }
        }
      }
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

    let options =
      for item of lessons {
        <option value={item.path}>
          [item.category, item.title]
          |> Array.reject(String.isBlank)
          |> String.join(" / ")
        </option>
      }

    <div::root>
      <div::sidebar>
        <div::navigation>
          <Icon
            disabled={Maybe.isNothing(previousLessonPath)}
            icon={TablerIcons.ARROW_LEFT}
            onClick={
              (event : Html.Event) {
                if let Maybe.Just(path) = previousLessonPath {
                  Window.navigate("/tutorial#{path}")
                }
              }
            }/>

          <select::select
            value={path}
            onChange={
              (event : Html.Event) {
                let path =
                  Dom.getValue(event.target)

                Window.navigate("/tutorial#{path}")
              }
            }>

            options

          </select>

          <Icon
            disabled={Maybe.isNothing(nextLessonPath)}
            icon={TablerIcons.ARROW_RIGHT}
            onClick={
              (event : Html.Event) {
                if let Maybe.Just(path) = nextLessonPath {
                  Window.navigate("/tutorial#{path}")
                }
              }
            }/>
        </div>

        <div::scroll-panel>
          <div::instructions key={path}>
            <Content fontSize={16}>
              ContentInstrumenter.instrument(
                skipAnchors: true,
                html: instructions)
            </Content>
          </div>
        </div>

        <div::toolbar>
          if hasSolution {
            if !isSolution {
              <LabelledIcon
                onClick={handleShowSolution}
                label=<{ "Show Solution" }>
                icon={TablerIcons.EYE_BOLT}/>
            }
          }

          <LabelledIcon
            disabled={Maybe.isNothing(nextLessonPath)}
            icon={TablerIcons.ARROW_RIGHT}
            label=<{ "Next" }>
            onClick={
              (event : Html.Event) {
                if let Maybe.Just(path) = nextLessonPath {
                  Window.navigate("/tutorial#{path}")
                }
              }
            }/>
        </div>
      </div>

      if Array.isEmpty(files) {
        <div::empty>
          <IllustratedMessage
            subtitle=<{ "This chapter does not have an interactive example." }>
            title=<{ "Read and Relax" }>
            image={TablerIcons.BOOKS}/>
        </div>
      } else {
        <>
          <div::ide>
            if Array.size(files) > 1 {
              <div::files>
                for file of files {
                  <div::file(file.path == activeFile) onClick={() { setFile(file.path) }}>
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
                      onChange={updateValue}
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
            <iframe::iframe as iframe/>
          </div>
        </>
      }
    </div>
  }
}
