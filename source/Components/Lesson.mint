async component Lesson {
  connect Stores.Lesson exposing { showSolution, project }
  connect Application exposing { isMobile }

  // The path to the previous lesson (if any).
  property previousLessonPath : Maybe(String)

  // The path to the next lesson (if any).
  property nextLessonPath : Maybe(String)

  // The list of lessons for the select.
  property lessons : Array(Lesson)

  // The instructions to show.
  property instructions : Html

  // The path of the lesson.
  property path : String

  // Styles for the root element.
  style root {
    grid-template-columns: minmax(33.333%, 32em) auto;
    background: var(--blur-color);
    grid-template-rows: 1fr;
    min-height: 0;
    display: grid;
  }

  // Styles for the instructions.
  style instructions {
    padding: 1.5em;
  }

  // The style for the sidebar.
  style sidebar {
    border-right: 3px double var(--border-color);
    grid-row: span 2;

    grid-template-rows: auto 1fr auto;
    min-height: 0;
    display: grid;

    if isMobile {
      grid-template-rows: auto 1fr;

      border-bottom: 3px double var(--border-color);
      border-right: 0;
    }
  }

  // Styles for the toolbar.
  style toolbar {
    border-top: 3px double var(--border-color);
    padding: 0.75em 1.5em;

    grid-auto-flow: column;
    justify-content: end;
    align-items: center;
    grid-gap: 1.5em;
    display: grid;
  }

  // Styles for the navigation.
  style navigation {
    border-bottom: 3px double var(--border-color);
    box-sizing: border-box;
    padding: 0.65em 1.5em;

    grid-template-columns: auto 1fr auto;
    grid-gap: 1em;
    display: grid;
  }

  // Styles for the IDE.
  style ide {
    border-bottom: 3px double var(--border-color);
    min-height: 0;
    display: grid;

    if Array.size(files) > 1 {
      grid-template-columns: auto 1fr;
    }
  }

  // Styles for the scrollable panel.
  style scroll-panel {
    overflow: auto;
  }

  // Renders the component.
  fun render : Html {
    if isMobile {
      <Message
        subtitle=<>"The tutorial is not available on mobile devices."</>
        title=<>"Hello,"</>
        actions={
          <Content mobileFontSize={16}>
            ContentInstrumenter.instrument(
              <>
                "Please check out the "

                <a href="/reference">"reference"</a>

                " instead."
              </>)
          </Content>
        }
      />
    } else {
      let solutionLessons =
        Array.select(project.files,
          (file : LessonFile) { String.isNotBlank(file.solution) })

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
                label=<>"Show Solution"</>
                icon={TablerIcons.EYE_BOLT}
              />
            }
          }

          <LabelledIcon
            disabled={Maybe.isNothing(nextLessonPath)}
            icon={TablerIcons.ARROW_RIGHT}
            label=<>"Next"</>
            href={
              if let Maybe.Just(path) = nextLessonPath {
                "/tutorial#{path}"
              }
            }
          />
        </div>

      <div::root>
        <div::sidebar>
          <div::navigation>
            <Icon
              disabled={Maybe.isNothing(previousLessonPath)}
              icon={TablerIcons.ARROW_LEFT}
              href={
                if let Maybe.Just(path) = previousLessonPath {
                  "/tutorial#{path}"
                }
              }
            />

            <Select
              options={options}
              value={path}
              onChange={
                (value : String) { Window.navigate("/tutorial#{value}") }
              }
            />

            <Icon
              disabled={Maybe.isNothing(nextLessonPath)}
              icon={TablerIcons.ARROW_RIGHT}
              href={
                if let Maybe.Just(path) = nextLessonPath {
                  "/tutorial#{path}"
                }
              }
            />
          </div>

          <div::scroll-panel>
            <div::instructions key={path}>
              <Content>
                ContentInstrumenter.instrument(
                  html: instructions,
                  skipAnchors: true)
              </Content>
            </div>
          </div>

          toolbar
        </div>

        <Ide onChange={-> project} value={project} orientation="vertical"/>
      </div>
    }
  }
}
