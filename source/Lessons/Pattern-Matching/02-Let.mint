module Lessons {
  const PATTERN_MATCHING_LET =
    {
      files:
        [
          {
            path: "Main.mint",
            solution:
              <<~MINT
              component Main {
                fun getUsername() {
                  Result.Err("alice")
                }

                fun getPassword() {
                  Result.Ok("hunter2")
                }

                fun logIn(username: String, password: String) {
                  Result.Ok("Welcome")
                }

                fun render : String {
                  let Ok(username) =
                    getUsername() or return "Cannot get username!"

                  let Ok(password) =
                    getPassword() or return "Cannot get password!"

                  let Ok(greeting) =
                    logIn(username, password) or return "Cannot login!"

                  greeting
                }
              }
              MINT,
            contents:
              <<~MINT
              component Main {
                fun getUsername() {
                  Result.Ok("alice")
                }

                fun getPassword() {
                  Result.Ok("hunter2")
                }

                fun logIn(username: String, password: String) {
                  Result.Ok("Welcome")
                }

                fun render : String {
                  let Ok(username) =
                    getUsername() or return "Cannot get username!"

                  let Ok(password) =
                    getPassword() or return "Cannot get password!"

                  let Ok(greeting) =
                    logIn(username, password) or return "Cannot login!"

                  greeting
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        `let` statements can destructure a pattern instead of just assigning a
        value to a variable:

        ```mint
        let {string, number} = {"A", 0}
        ```

        If the pattern is not exhaustive, then you need to return early with
        the `or return` keywords.

        ```mint
        let Just(value) =
          Maybe.Just("Hello") or return "It's nothing!"

        "It's just \#{value}!"
        ```

        It's good for handling many results with different errors types, as seen
        in the example on the right.

        Try changing the return value of the functions to an error to see how
        it works!

        ```mint
        Result.Err("Something went wrong!")
        ```
        MARKDOWN
    }
}
