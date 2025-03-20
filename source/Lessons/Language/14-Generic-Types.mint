module Lessons {
  const LANGUAGE_GENERIC_TYPES =
    {
      files:
        [
          {
            path: "Main.mint",
            solution:
              <<~MINT
              /* Represents the status of a request. */
              type Status(error, value) {
                Errored(error)
                Loaded(value)
                Loading
                Idle
              }

              component Main {
                fun render : Html {
                  let user =
                    Status.Errored("YO!")

                  <div>
                    case user {
                      Errored(error) => "An error happened: \#{error}!"
                      Loaded(value) => value
                      Loading => "Loading..."
                      Idle => ""
                    }
                  </div>
                }
              }
              MINT,
            contents:
              <<~MINT
              /* Represents the status of a request. */
              type Status(error, value) {
                Errored(error)
                Loaded(value)
                Loading
                Idle
              }

              component Main {
                fun render : Html {
                  let user =
                    Status.Loaded("Joe")

                  <div>
                    case user {
                      Errored(error) => "An error happened: \#{error}!"
                      Loaded(value) => value
                      Loading => "Loading..."
                      Idle => ""
                    }
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Custom types (like we created in the previous lesson) can be generic,
        meaning that you can specify relationships using type variables.

        An example for this is the `Result` type:

        ```mint
        type Result(error, value) {
          Err(error)
          Ok(value)
        }
        ```

        It's generic because it can be used with other types to represent
        different outcomes:

        ```mint
        // This is a result of converting a number
        Result(String, Number)

        // This is a result of finding a DOM element
        Result(String, Dom.Element)
        ```

        You can play around with the example, changing the option to see how it
        reflects the displayed text.
        MARKDOWN
    }
}
