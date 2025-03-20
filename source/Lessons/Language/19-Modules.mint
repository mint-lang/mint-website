module Lessons {
  const LANGUAGE_MODULES =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              module Greeter {
                fun greet (name : String = "World") : String {
                  "Hello \#{name}!"
                }
              }

              component Main {
                fun render : Html {
                  <div>
                    Greeter.greet()
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Modules are top level entities used for grouping related functions and
        constants together. They are usually used to gather functions that
        relate to a specific type (like `String` or `Number`).

        You can call the functions of a module by using the module's name:

        ```mint
        Greeter.greet("Joe") /* "Hello Joe" */
        ```

        You can omit the name of the module if you are calling the function
        from inside the module:

        ```mint
        module Greeter {
          fun greet (name : String) : String {
            "Hello \#{name}!"
          }

          fun greetUpperCase (name : String) : String {
            greet(String.toUpperCase(name))
          }
        }
        ```

        Modules are **open**, meaning that you can define additional functions
        in different places:

        ```mint
        module Greeter {
          fun greet (name : String) : String {
            "Hello \#{name}!"
          }
        }

        module Greeter {
          fun greetUpperCase (name : String) : String {
            greet(String.toUpperCase(name))
          }
        }
        ```

        It's useful if you want to extend modules in the standard library.
        MARKDOWN
    }
}
