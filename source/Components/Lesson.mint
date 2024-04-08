async component Lesson {
  connect Stores.Lesson exposing { project, showSolution, update }
  connect Application exposing { mobile }

  /* The path to the previous lesson (if any). */
  property previousLessonPath : Maybe(String)

  /* The path to the next lesson (if any). */
  property nextLessonPath : Maybe(String)

  /* The list of lessons for the select. */
  property lessons : Array(Lesson)

  /* The instructions to show. */
  property instructions : Html

  /* The path of the lesson. */
  property path : String

  /* Styles for the root element. */
  style root {
    grid-template-columns: minmax(33.333%, 32em) auto;
    background: rgba(255, 255, 255, 0.5);
    grid-template-rows: 1fr;
    min-height: 0;
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

    if mobile {
      grid-template-rows: auto 1fr;

      border-bottom: 3px double #EEE;
      border-right: 0;
    }
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

  /* Renders the component. */
  fun render : Html {
    if mobile {
      <> "Not available on mobile" </>
    } else {
      let solutionLessons =
        Array.select(
          project.files,
          (file : LessonFile) {
            String.isNotBlank(file.solution)
          })

      let hasSolution =
        !Array.isEmpty(solutionLessons)

      let isSolution =
        project.files
        |> Array.reject((file : LessonFile) { file.solution == file.contents })
        |> Array.isEmpty()

      let options =
        for item of lessons {
          <option value={item.path}>
            [item.category, item.title]
            |> Array.reject(String.isBlank)
            |> String.join(" / ")
          </option>
        }

      let toolbar =
        <div::toolbar>
          if hasSolution {
            if !isSolution {
              <LabelledIcon
                onClick={(event : Html.Event) { showSolution() }}
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

          if !mobile {
            toolbar
          }
        </div>

        if Array.isEmpty(project.files) {
          <div::empty>
            <IllustratedMessage
              subtitle=<{ "This chapter does not have an interactive example." }>
              title=<{ "Read and Relax" }>
              image={TablerIcons.BOOKS}/>
          </div>
        } else {
          <Ide
            onChange={update}
            value={project}/>
        }

        if mobile {
          toolbar
        }
      </div>
    }
  }
}
