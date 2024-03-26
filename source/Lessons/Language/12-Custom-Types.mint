module Lessons {
  const LANGUAGE_CUSTOM_TYPES =
    {
      files:
        [
          {
            path: "Main.mint",
            solution:
              <<~MINT
              type User {
                LoggedIn(String)
                Visitor
              }

              component Main {
                fun render : Html {
                  let user =
                    User.LoggedIn("Joe")

                  <div>
                    case user {
                      LoggedIn(name) => "I am \#{name}!"
                      Visitor => "I am a visitor!"
                    }
                  </div>
                }
              }
              MINT,
            contents:
              <<~MINT
              type User {
                LoggedIn(String)
                Visitor
              }

              component Main {
                fun render : Html {
                  let user =
                    User.Visitor

                  <div>
                    case user {
                      LoggedIn(name) => "I am \#{name}!"
                      Visitor => "I am a visitor!"
                    }
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Min supports [Algebraic Data Types], with them, it's possible to
        describe data which contains different types of values (called
        variants).

        [Algebraic Data Types]: https://en.wikipedia.org/wiki/Algebraic_data_type

        For example, a type for a logged in state can be written as two
        variants:

        ```mint
        type User {
          LoggedIn(String)
          Visitor
        }
        ```

        You can create a value of a type variant by using its name and option:

        ```mint
        User.LoggedIn("Joe")
        ```

        As an exercise, change the given example to show "Joe" as the logged in
        user.
        MARKDOWN
    }
}
