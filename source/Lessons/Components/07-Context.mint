module Lessons {
  const COMPONENTS_CONTEXT =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              type Theme {
                setMode : Function(String, Promise(Void)),
                mode : String,
              }

              component Button {
                context theme : Theme

                style root {
                  border-radius: 3px;
                  padding: 10px;
                  border: 0;

                  case theme.mode {
                    "light" =>
                      background: #EEE;
                      color: #333;
                    =>
                      background: #333;
                      color: #FFF;
                  }
                }

                fun handleClick {
                  theme.setMode(
                    if theme.mode == "light" {
                      "dark"
                    } else {
                      "light"
                    })
                }

                fun render {
                  <button::root onClick={handleClick}>
                    "I'm a button! Click me to change the mode!"
                  </button>
                }
              }

              component Main {
                state mode : String = "light"

                provide Theme {
                  setMode: -> mode,
                  mode: mode
                }

                fun render {
                  <Button/>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        With contexts, you can pass down values to the child components without
        using props.

        First, you need to have a type (record) for the context:

        ```mint
        type Theme {
          setMode : Function(String, Promise(Void)),
          mode : String,
        }
        ```

        Then the parent component needs to provide the value for that type:

        ```mint
        provide Theme {
          setMode: -> mode,
          mode: mode
        }
        ```

        And finally, the child components can access the provided value like
        this:

        ```mint
        context theme : Theme
        ```

        All of it this is type safe and errors are provided if something is off.
        MARKDOWN
    }
}
