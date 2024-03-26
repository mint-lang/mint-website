module Lessons {
  const LANGUAGE_ANONYMOUS_FUNCTIONS =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                fun render : Html {
                  let greet =
                    () {
                      "Hello World!"
                    }

                  <div>
                    greet()
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Anonymous functions look like regular functions but without the `fun`
        keyword and the name, and they are usually used in event handlers or as
        arguments to other function calls:

        ```mint
        // 2, 4, 6, 8, 10
        Array.map(
          [1, 2, 3, 4, 5],
          (item : Number) {
            item * 2
          })
        ```

        They can have a return type and optional arguments as well:

        ```mint
        (name : String = "World") : String {
          "Hello World!"
        }
        ```
        MARKDOWN
    }
}
