module Lessons {
  const LANGUAGE_CONSTANTS =
    {
      files:
        [
          {
            path: "Main.mint",
            solution:
              <<~MINT
              module Greeter {
                const NAME = "World"
              }

              component Main {
                fun render : Html {
                  <div>"Hello \#{Greeter.NAME}!"</div>
                }
              }
              MINT,
            contents:
              <<~MINT
              component Main {
                const NAME = "World"

                fun render : Html {
                  <div>"Hello \#{NAME}!"</div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Constants are values that cannot change while the application is
        running, they can be defined for top level entities like `module`,
        `component`, `suite`, `provider` or `store`.

        They can only contain uppercase letters and underscores. Use the
        `const` keyword to define them:

        ```mint
        const PI = 3.14159265359
        ```

        They can be accessed using their name, in the same scope they are
        defined in:

        ```mint
        PI * 2 // 6.28318530718
        ```

        To access them outside of the scope they are defined in you can use
        the dot `.` syntax:

        ```mint
        module Math {
          const PI = 3.14159265359
        }

        Math.PI * 2 // 6.28318530718
        ```

        As an exercise you can move the `NAME` constant into a module named
        `Greeter`!
        MARKDOWN
    }
}
