component Button {
  /* The click event handler. */
  property onClick : Function(Html.Event, Promise(Void)) = Promise.never1
  /* Whether or not the button is disabled. */
  property disabled : Bool = false
  /* Where to align the text in case the button is wide. */
  property align : String = "center"
  /* Whether or not make the text use ellipsis in case it overflows. */
  property ellipsis : Bool = true
   /* Whether or not to break the words. */
  property breakWords : Bool = false
/* The icon before the label. */
  property iconBefore : Html = <></>

  /* The icon after the label. */
  property iconAfter : Html = <></>

  /* The label of the button. */
  property label : String = ""

  /* Styles for the button. */
  style styles {
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    -webkit-touch-callout: none;
    -webkit-appearance: none;
    appearance: none;

    border-radius: 0.375em;
    display: inline-block;

    font-family: var(--font-family);
    font-weight: bold;
    font-size: 1em;

    box-sizing: border-box;
    text-decoration: none;
    user-select: none;

    position: relative;
    cursor: pointer;
    outline: none;
    padding: 0;
    margin: 0;
    border: 0;

    border: 3px double #AAA;
    background: #EEE;

    &::-moz-focus-inner {
      border: 0;
    }

    &:focus::before {
      content: "";

      border-radius: 0.25em;
      position: absolute;
      bottom: 0.1875em;
      right: 0.1875em;
      left: 0.1875em;
      top: 0.1875em;

    }

    &:hover,
    &:focus {
    }

    &:disabled {
      filter: saturate(0) brightness(0.8) contrast(0.5);
      cursor: not-allowed;
    }
  }

   /* Styles for the container. */
  style container {
    justify-content: #{align};
    align-items: center;
    display: flex;

    box-sizing: border-box;
    padding: 0.75em 1.25em;
  }

  /* Styles for the label. */
  style label {
    padding-bottom: 0.05em;
    line-height: 1.2;

    if breakWords {
      word-break: break-word;
    } else if ellipsis {
      text-overflow: ellipsis;
      white-space: nowrap;
      overflow: hidden;
    } else {
      white-space: nowrap;
    }
  }

  fun render:  Html {
    <button::styles>
    <div::container>
     if Html.isNotEmpty(iconBefore) {
            <Ui.Icon icon={iconBefore}>

            </Ui.Icon>
          }

          if String.isNotBlank(label) {
            <div::label>
              <{ label }>
            </div>
          }

          if Html.isNotEmpty(iconAfter) {
            <Ui.Icon icon={iconAfter}>

            </Ui.Icon>
          }
    label
    </div>
    </button>
  }
}
async component Workspace {
  connect Stores.Learn exposing {
    previousLesson,
    showSolution,
    updateValue,
    nextLesson,
    previewURL,
    activeFile,
    setFile,
    values,
    lesson
  }

  /* The style for the base. */
  style base {
    grid-template-columns: minmax(33.333%, 32em) auto;
    grid-template-rows: 1fr 1fr;
    display: grid;
    height: 100vh;

    button:disabled {
      opacity: 0.5;
    }
  }

  /* The style for the instructions. */
  style instructions {
    padding: 1.5em;
    --tabler-stroke-width: 3;
  }

  style empty {
    background: var(--content-color);
    grid-row: span 2;
    grid-column: 2;
    display: grid;
  }

  /* The style for the sidebar. */
  style sidebar {
    border-right: 1px solid var(--content-border);
    background: var(--content-color);
    color: var(--content-text);
    grid-row: span 2;

    grid-template-rows: auto 1fr auto;
    min-height: 0;
    display: grid;
  }

  /* Styles for the editor. */
  style editor {
    border-bottom: 1px solid var(--content-border);
    border-right: 1px solid var(--content-border);
    min-height: 0;
    display: grid;

    background-color: var(--content-color);
    padding-top: 8px;

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
    height: 100%;

    border: 0;
    border-right: 1px solid var(--content-border);
  }

  /* Styles for the toolbar. */
  style toolbar {
    border-top: 1px solid var(--content-border);
    padding: 0.75em 1.5em;

    justify-content: space-between;
    grid-auto-flow: column;
    align-items: center;
    display: grid;

    --tabler-stroke-width: 3;
  }

  /* Styles for the navigation. */
  style navigation {
    border-bottom: 0.1875em solid var(--content-border);
    box-sizing: border-box;
    padding: 0.65em 1.5em;

    grid-template-columns: auto 1fr auto;
    grid-gap: 1em;
    display: grid;

    /* TODO: Fix this in Mint UI. */
    > a {
      display: inline-grid;
    }
  }

  /* Function to shows the solution. */
  fun handleShowSolution (event : Html.Event) {
    showSolution()
  }

  /* Renders the component. */
  fun render : Html {
    let solutionLessons =
      Array.select(
        lesson.files,
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

    let prevLessonPath =
      Maybe.map(previousLesson, (lesson : Lesson) { lesson.path })

    let nextLessonPath =
      Maybe.map(nextLesson, (lesson : Lesson) { lesson.path })

    <div::base>
      <div::sidebar>
        <div::navigation>
          <Button
            onClick={(event : Html.Event) { Window.navigate(prevLessonPath or "/") }}
            disabled={Maybe::Nothing == prevLessonPath}
            iconAfter={TablerIcons:CHEVRONS_LEFT}
            />
/*
          <Ui.Native.Select
            onChange={Window.navigate}
            items={Lessons:LIST_ITEMS}
            value={lesson.path}/>
*/
          <Button
          onClick={(event : Html.Event) { Window.navigate(nextLessonPath or "/") }}
            disabled={Maybe::Nothing == nextLessonPath}
            iconAfter={TablerIcons:CHEVRONS_RIGHT}/>
        </div>

        /*<Ui.ScrollPanel maxSize={1000}>
          <div::instructions key={lesson.path}>
            <Ui.Content>
              <{ lesson.contents }>
            </Ui.Content>
          </div>
        </Ui.ScrollPanel>*/

        <div::toolbar>
          /*<Ui.DarkModeToggle/>

          <Ui.Container>
            if hasSolution {
              if isSolution {
                <{  }>
              } else {
                <Ui.Button
                  onClick={handleShowSolution}
                  iconAfter={TablerIcons:EYE}
                  label="Show Me"
                  type="danger"
                  href=""/>
              }
            }

            <Ui.Button
              disabled={Maybe::Nothing == nextLessonPath}
              iconAfter={Ui.Icons:CHEVRON_RIGHT}
              href={nextLessonPath or "/"}
              type="faded"
              label="Next"/>
          </Ui.Container>*/
        </div>
      </div>

      if Array.isEmpty(lesson.files) {
        <div::empty>
          /*<Ui.IllustratedMessage
            subtitle=<{ "This chapter does not have an interactive example." }>
            title=<{ "Read and Relax" }>
            image=<{
              <Ui.Icon
                icon={TablerIcons:BOOK}
                size={Ui.Size::Em(10)}/>
            }>/>*/
        </div>
      } else {
        <>
          <div::editor>
          /*
            <{
              {
                let tabs =
                  for file of lesson.files {
                    {
                      content:
                        <div style="display:grid;min-height:0;">
                          <CodeMirror
                            value={Map.get(values, file.path) or file.contents}
                            onChange={updateValue(file.path)}
                            javascripts=[
                              @asset(../assets/codemirror.min.js),
                              @asset(../assets/codemirror.simple-mode.js),
                              @asset(../assets/codemirror.mint.js)
                            ]
                            styles=[
                              @asset(../assets/codemirror.min.css),
                              @asset(../assets/codemirror.light.css),
                              @asset(../assets/codemirror.dark.css)
                            ]
                            theme={
                              if darkMode {
                                "dark"
                              } else {
                                "light"
                              }
                            }
                            mode="mint"/>
                        </div>,
                      iconBefore: <></>,
                      iconAfter: <></>,
                      label: file.title,
                      key: file.path
                    }
                  }

               <Ui.Tabs
                  active={activeFile}
                  onChange={setFile}
                  breakpoint={400}
                  items={tabs}/>
              }
            }>*/
          </div>

          <div>
            <iframe::iframe src={previewURL}/>
          </div>
        </>
      }
    </div>
  }
}
