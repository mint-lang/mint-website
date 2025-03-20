module Lessons {
  const LANGUAGE_FUNCTION_CAPTURES =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                fun add(a : Number, b : Number) : Number {
                  a + b
                }

                fun render : Html {
                  let addOneV1 = (x : Number) { add(1, x) }
                  let addOneV2 = add(1, _)

                  <div>
                    addOneV1(2)
                    <br/>
                    addOneV2(2)
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Mint has a shorthand syntax for creating anonymous functions that take some
        arguments and immediately call another function with those arguments:
        the function capture syntax.

        The anonymous function `(a : a, b : b) { some_function(..., a, b, ...) }` can be
        written as `some_function(..., _, _,...)`, with any number of other
        arguments passed directly to the inner function. The underscore `_` is a
        placeholder for the arguments.
        MARKDOWN
    }
}
