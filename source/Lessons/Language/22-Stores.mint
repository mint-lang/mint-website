module Lessons {
  const LANGUAGE_STORES =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              store Data {
                state value : String = "Default value..."

                fun setValue (newValue : String) : Promise(Void) {
                  next { value: newValue }
                }
              }

              component Main {
                fun render : Html {
                  <div>
                    Data.value
                    <button onClick={() { Data.setValue("Hello World!") }}>
                     "Set Value"
                    </button>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        A **store** is a global entity which have state (basically a container
        for data). It is defined with the `store` keyword and can have
        [functions], [constants], [states] and [computed properties]:

        [computed properties]: /reference/components/computed-properties
        [states]: /reference/state-management
        [functions]: /reference/functions
        [constants]: /reference/constants

        ```mint
        store Data {
          state value : String = ""

          fun setValue (newValue : String) : Promise(Void) {
            next { value: newValue }
          }
        }
        ```

        You can access its entities with the `.` just like modules:

        ```mint
        component Main {
          fun render : String {
            Data.value
          }
        }
        ```

        Any component referencing a store (like above) is re-rendered when
        data in it changes.
        MARKDOWN
    }
}
