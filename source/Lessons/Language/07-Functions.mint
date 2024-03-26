module Lessons {
  const LANGUAGE_FUNCTIONS =
    {
      files:
        [
          {
            solution:
              <<~MINT
              component Main {
                fun render : Html {
                  let name =
                    "World"

                  <h1>"Hello \#{name}!"</h1>
                }
              }
              MINT,
            contents:
              <<~MINT
              component Main {
                fun render : Html {
                  <h1>"Hello World!"</h1>
                }
              }
              MINT,
            path: "Main.mint"
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Functions play a central role in Mint. For instance, every component
        **must** have a `render` function. That's why it's crucial you have a
        good understanding of how they work.

        In Mint, every function starts with the `fun` keyword then name (a
        lowercase letter followed by letters and numbers). After the name (or
        arguments) is the definition for the return type of the function.

        The function's body contains a number of statements and expressions:

        ```mint
        component Main {
          fun render : Html {
            let name =
              "World"

            <h1>"Hello \#{name}!"</h1>
          }
        }
        ```

        We can even declare multiple variables at once:

        ```mint
        component Main {
          fun render : Html {
            let greeting =
              "Howdy"

            let name =
              "World"

            <h1>"\#{greeting} \#{name}!"</h1>
          }
        }
        ```

        Let's give it a shot! Declare a `name` variable in your `render`
        function and replace the currently hard-coded greeting.
        MARKDOWN
    }
}
