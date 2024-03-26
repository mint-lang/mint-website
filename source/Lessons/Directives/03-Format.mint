module Lessons {
  const DIRECTIVES_FORMAT =
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
                  let {result, code} =
                    @format {
                      <div>"Hello There!"</div>
                    }

                  <div>
                    result

                    <pre>
                      <code>code</code>
                    </pre>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        The `@format` directive returns the formatted string version of the
        code it's given and the result of the code in a tuple `Tuple(a, String)`

        This was created to make it easy to display the source and the result
        of an example Mint code.

        ------------------------------------------------------------------------

        For more information check out the [reference page].

        [reference page]: /reference/directives/format
        MARKDOWN
    }
}
