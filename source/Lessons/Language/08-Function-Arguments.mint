module Lessons {
  const LANGUAGE_FUNCTION_ARGUMENTS =
    {
      files:
        [
          {
            solution:
              <<~MINT
              component Main {
                fun greet (name : String = "World") : String {
                  "Hello \#{name}!"
                }

                fun render : Html {
                  <h1>
                    greet()
                    <br/>
                    greet("Joe")
                  </h1>
                }
              }
              MINT,
            contents:
              <<~MINT
              component Main {
                fun greet : String {
                  "Hello World!"
                }

                fun render : Html {
                  <h1>
                    greet()
                    <br/>
                    /* greet("Joe") */
                  </h1>
                }
              }
              MINT,
            path: "Main.mint"
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Functions can have arguments. Argument names must start with a
        lowercase letter and can contain only letters and numbers.

        Arguments come after the name of the function, separated by commas and
        enclosed by parentheses:

        ```mint
        fun greet (name : String) : String {
          "Hello \#{name}!"
        }
        ```

        Arguments must have a type definition after the name and can have an
        optional default value:

        ```mint
        fun greet (name : String = "World") : String {
          "Hello \#{name}!"
        }
        ```

        Let's change the `greet` function to take an argument for the name and
        use that in the return value! Don't forget to add a default value
        to make both calls work and uncomment the second greeting!
        MARKDOWN
    }
}
