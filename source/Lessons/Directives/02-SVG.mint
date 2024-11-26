module Lessons {
  const DIRECTIVES_SVG =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                style root {
                  svg {
                    fill: red;
                  }
                }

                fun render : Html {
                  <div::root>
                    @svg(circle.svg)
                  </div>
                }
              }
              MINT
          },
          {
            path: "circle.svg",
            solution: "",
            contents:
              <<~SVG
              <svg
                xmlns="http://www.w3.org/2000/svg"
                viewBox="0 0 100 100"
                height="100"
                width="100">
                <circle cx="50" cy="50" r="50" />
              </svg>
              SVG
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        The `@svg` directive allows you to inline an SVG file as `Html`. This
        is useful for many reasons, for example if you don't want to make extra
        HTTP requests to display an SVG or if you want to style the SVG with
        CSS.

        The referenced file is **relative to the file the directive is defined
        in** or **relative to the root of the project**.

        ```mint
        // Main.mint
        component Main {
          fun render : Html {
            @svg(icon.svg)
          }
        }
        ```

        In the example above, the `icon.svg` is in the same directory as the
        `Main.mint` file.

        ------------------------------------------------------------------------

        For more information, check out the [reference page].

        [reference page]: /reference/directives/svg
        MARKDOWN
    }
}
