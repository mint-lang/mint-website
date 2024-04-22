module Lessons {
  const STYLING_INTERPOLATION =
    {
      files:
        [
          {
            path: "Main.mint",
            solution:
              <<~MINT
              component Main {
                state color : String = "red"

                style root {
                  color: \#{color};
                }

                fun render : Html {
                  <div::root onClick={() { next { color: "blue" }}}>
                    "Hello world!I'm \#{color}!"
                  </div>
                }
              }
              MINT,
            contents:
              <<~MINT
              component Main {
                state color : String = "red"

                style root {
                  color: black;
                }

                fun render : Html {
                  <div::root onClick={() { next { color: "blue" }}}>
                    "Hello world!I'm \#{color}!"
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        It would be limiting if you could only style elements with static
        values, but fortunately you can use dynamic values using the standard
        interpolation syntax `\#{...}`

        ```mint
        style root {
          color: \#{color};
        }
        ```

        In the case above, if the `color` entity changes it will reflect in the
        color of the element.

        You can have many interpolations in a value:

        ```mint
        style root {
          box-shadow: \#{x} \#{y} \#{blur} \#{spread} \#{color};
        }
        ```

        As an exercise, use interpolation to color the element.
        MARKDOWN
    }
}
