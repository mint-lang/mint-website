async component Sandbox.Editor {
  connect Application exposing { isMobile }

  // The sandbox which is edited.
  property defaultSandbox : Sandbox

  // The status of the user.
  property userStatus : UserStatus

  // The current sandbox.
  state project : Maybe(Sandbox) = Maybe.Nothing

  // The current value for the IDE.
  state value : Maybe(Project) = Maybe.Nothing

  // The current title.
  state title : Maybe(String) = Maybe.Nothing

  use Provider.Shortcuts {
    shortcuts:
      [
        {
          shortcut: [Html.Event.CTRL, Html.Event.S],
          condition: () : Bool { true },
          bypassFocused: true,
          action: save
        }
      ]
  }

  // Styles for the root element.
  style root {
    min-height: 0;
    display: grid;
  }

  // Styles for the input.
  style input {
    border: 1px solid var(--border-color);
    background: var(--input-color);
    color: var(--text-color);
    font-family: inherit;
    border-radius: 3px;
    padding: 5px 10px;
    max-width: 300px;
  }

  // Saves the sandbox.
  fun save : Promise(Void) {
    let {actual, current, defaultValue} =
      getCurrent()

    let content =
      Maybe.map(actual.files[0], .contents(LessonFile)) or ""

    let result =
      await Sandbox.save(
        title: title or current.title,
        content: content,
        id: current.id)

    case result {
      Ok(project) => next { project: Maybe.Just(project) }
      Err => Window.alert("Cannot save project!")
    }
  }

  // Returns the current values.
  fun getCurrent : Tuple(Project, Sandbox, Project) {
    let current =
      project or defaultSandbox

    let defaultValue =
      {
        files: [{ solution: "", contents: current.content, path: "Main.mint" }],
        activeFile: "Main.mint"
      }

    {value or defaultValue, current, defaultValue}
  }

  // Renders the component.
  fun render : Html {
    let {actual, current, defaultValue} =
      getCurrent()

    let {actions, title} =
      if current.id == "" {
        case userStatus {
          // This means it's an example.
          Initial =>
            {
              [
                MenuItem.link(
                  href: "/examples/",
                  icon: TablerIcons.FILES,
                  label: "Examples")
              ],
              Maybe.Nothing
            }

          => {[Sandbox.MenuItems.TUTORIAL], Maybe.Nothing}
        }
      } else {
        case userStatus {
          LoggedOut =>
            {[Sandbox.MenuItems.LOG_IN_WITH_GITHUB_TO_FORK], Maybe.Nothing}

          LoggedIn(user) =>
            if user.id == current.userId {
              {
                [
                  MenuItem.action(
                    action: () { Sandbox.delete(current.id) },
                    icon: TablerIcons.TRASH,
                    label: "Delete"),
                  MenuItem.action(
                    icon: TablerIcons.DEVICE_FLOPPY,
                    label: "Save",
                    action: save,
                    disabled:
                      actual == defaultValue && (title or current.title) == current.title),
                  MenuItem.Divider,
                  Sandbox.MenuItems.LOGOUT
                ],
                Maybe.Just(
                  <input::input
                    value={title or current.title}
                    onInput={
                      (event : Html.Event) {
                        next { title: Maybe.Just(Dom.getValue(event.target)) }
                      }
                    }
                  />)
              }
            } else {
              {
                [
                  MenuItem.action(
                    action: () { Sandbox.fork(current.id) },
                    icon: TablerIcons.GIT_FORK,
                    label: "Fork")
                ],
                Maybe.Nothing
              }
            }

          Initial => {[], Maybe.Nothing}
        }
      }

    <Sandbox.Layout
      title={title or <strong>current.title</strong>}
      actions={actions}
    >
      <Ide
        onChange={(value : Project) { next { value: Maybe.Just(value) } }}
        orientation={
          if isMobile {
            "vertical"
          } else {
            "horizontal"
          }
        }
        value={actual}
      />
    </Sandbox.Layout>
  }
}
