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
        You can declare two kinds of custom types with the `type` keyword.
        One of them is [Algebraic Data Types]. With them it's possible to
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

        You can create a value of a type variant by using its name and
        parameters:

        ```mint
        User.LoggedIn("Joe")
        ```

        You can name parameters of variants which make them more descriptive:

        ```mint
        type User {
          LoggedIn(name: String)
          Visitor
        }
        ```

        You can refer to the name when destructuring:

        ```mint
        let LoggedIn(user) =
          User.LoggedIn(name: "Joe")
        ```

        As an exercise, change the given example to show `"Joe"` as the
        logged in user.
        MARKDOWN
    }
}
