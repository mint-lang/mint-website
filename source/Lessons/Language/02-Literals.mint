module Lessons {
  const LANGUAGE_LITERALS =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                fun render : Html {
                  <pre>
                    String.join([
                      Bool.toString(true && false),
                      Bool.toString(true && true),
                      Bool.toString(false || false),
                      Bool.toString(false || true),
                      Number.toString(3.14),
                      Number.toString(42),
                      Number.toString(-10),
                      Regexp.toString(/foo|bar/),
                      Regexp.toString(/h(e+)llo/)
                    ], "\n")
                  </pre>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        The usual literal types like on other programming languages are
        available in Mint as well (strings are in the next chapter).

        ### Boolean

        Represents the `Boolean` type. It has two possible values `true` and
        `false`.

        ```mint
        false // A Bool that is false
        true  // A Bool that is true
        ```

        ### Number

        Represents a `Number`. In Mint, all numbers are floats.

        ```mint
        3.14
        42
        -10
        ```

        ### Regexp

        Regular expressions are represented by the `Regexp` type.

        ```mint
        /foo|bar/
        /h(e+)llo/
        /\d+/
        /あ/
        ```
        MARKDOWN
    }
}
