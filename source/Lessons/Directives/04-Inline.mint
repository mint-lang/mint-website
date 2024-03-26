module Lessons {
  const DIRECTIVES_INLINE =
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
                  @inline(data.txt)
                }
              }
              MINT
          },
          {
            path: "data.txt",
            solution: "",
            contents:
              <<~TEXT
              Hello World!
              TEXT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        The `@inline` directive allows you to inline the contents of a file as
        `String`. This is useful for if you don't want to make extra HTTP
        requests to display the data contained in the files.

        The referenced file is **relative to the file the directive is defined
        in**.

        ```mint
        // Main.mint
        component Main {
          fun render : String {
            @inline(data.txt)
          }
        }
        ```

        In the example above the `data.txt` is in the same directory as the
        `Main.mint` file.

        ------------------------------------------------------------------------

        For more information check out the [reference page].

        [reference page]: /reference/directives/inline
        MARKDOWN
    }
}
