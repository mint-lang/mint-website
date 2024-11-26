module Lessons {
  const DIRECTIVES_ASSET =
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
                  let asset =
                    @asset(data.txt)

                  <div>
                    <a href={asset} download="data.txt">
                      "Download Asset"
                    </a>
                    <br/>
                    <i>
                      "The path of the asset is: \#{asset}"
                    </i>
                  </div>
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
        The `@asset` directive allows you to reference a file. Basically, it
        returns the path to the file, but more importantly it tells the
        compiler that an asset is used so it can be copied with the
        resulting bundle.

        The referenced file is **relative to the file the directive is defined
        in** or **relative to the root of the project**.

        ```mint
        // Main.mint
        component Main {
          fun render : String {
            @asset(data.txt)
          }
        }
        ```

        In the example above, the `data.txt` is in the same directory as the
        `Main.mint` file.

        ------------------------------------------------------------------------

        For more information, check out the [reference page].

        [reference page]: /reference/directives/asset
        MARKDOWN
    }
}
