module Lessons {
  const CONTROL_FLOW_IF =
    {
      files:
        [
          {
            path: "Main.mint",
            solution:
              <<~MINT
              component Main {
                state userLoggedIn : Bool = false

                fun toggle : Promise(Void) {
                  next { userLoggedIn: !userLoggedIn }
                }

                fun render : Html {
                  <div>
                    if userLoggedIn {
                      <button onClick={toggle}>
                        "Log out"
                      </button>
                    } else {
                      <button onClick={toggle}>
                        "Log in"
                      </button>
                    }
                  </div>
                }
              }
              MINT,
            contents:
              <<~MINT
              component Main {
                state userLoggedIn : Bool = false

                fun toggle : Promise(Void) {
                  next { userLoggedIn: !userLoggedIn }
                }

                fun render : Html {
                  <div>
                    <button onClick={toggle}>
                      "Log out"
                    </button>

                    <button onClick={toggle}>
                      "Log in"
                    </button>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        As most other languages, Mint has a construct to return different
        values based on some condition. It looks like this:

        ```mint
        if condition {
          "true"
        } else {
          "false"
        }
        ```

        Unlike in some languages, here `if` is an expression and not a
        statement, and because of this both branches need to return something
        and those need to be of the same type.

        With this information, you should be able to update the code to display the
        correct button based on the `userLoggedIn` state.
        MARKDOWN
    }
}
