module Lessons {
  const STYLING_BASICS =
    {
      files:
        [
          {
            path: "Main.mint",
            solution:
              <<~MINT
              component Main {
                style root {
                  font-family: monospace;
                  font-weight: bold;
                  color: red;
                }

                fun render : Html {
                  <div::root>
                    "Hello"
                  </div>
                }
              }
              MINT,
            contents:
              <<~MINT
              component Main {
                style root {
                  font-family: monospace;
                  font-weight: bold;
                  color: red;
                }

                fun render : Html {
                  <div>
                    "Hello"
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        You can style elements with CSS (inside components) almost like you
        would in plain HTML but instead of classes you create `style` blocks:

        ```mint
        style root {
          color: red;
        }
        ```

        To assign that style to an element you need to use the double colon
        `::root` notation after the tag name:

        ```mint
        <div::root></div>
        ```

        Just for practice assign the `root` style to the `div`.
        MARKDOWN
    }
}
