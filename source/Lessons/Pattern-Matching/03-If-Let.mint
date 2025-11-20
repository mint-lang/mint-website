module Lessons {
  const PATTERN_MATCHING_IF_LET =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                fun render : String {
                  let value =
                    Maybe.Just({"Joe", Maybe.Just("Howdy")})

                  if let Just({"Joe", Just(greeting)}) = value {
                    "\#{greeting} to you too Joe!"
                  } else {
                    "Hello some person!"
                  }
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        `If` expressions can have a `let` statement with a pattern instead of
        the usual boolean condition.

        ```mint
        if let Just(value) = Maybe.Just("Hello") {
          // The destructuring is successful...
        } else {
          // The destructuring if unsuccessful...
        }
        ```

        In that case, the main branch is only returned if the pattern matches
        the given value. All destructured variables are available in the main
        branch.

        This is basically a syntax sugar for a two branch `case` expression,
        however, there are some cases where it's useful to have less
        indentation or to omit the else branch.
        MARKDOWN
    }
}
