module Lessons {
  const JAVASCRIPT_INLINING =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                fun handleClick (event : Html.Event) : Void {
                  `window.alert("Hello World!")`
                }

                fun render : Html {
                  <div onClick={handleClick}>
                    "Click to alert!"
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Since the code compiles to JavaScript, you need to interface with it
        from time to time. Mint has a simple feature for that: **inlining**.

        ```mint
        `window.alert("Hello World!")`
        ```

        Everything between backticks is written to the compiled JavaScript code,
        so it's basically inlined into the output.

        You can put Mint variables (or code) into inlined code with
        interpolations:

        ```mint
        `window.alert(\#{String.toUpperCase("Hello World!")})`
        ```

        By default, the type of inlinings is `a` which means it will match
        anything. If you want to define its return type, you can do that with
        the `as` keyword:

        ```mint
        `new Date()` as Time
        ```

        > The compiler cannot enforce the given type, it's just for
          informational purposes for the compiler and reader.
        MARKDOWN
    }
}
