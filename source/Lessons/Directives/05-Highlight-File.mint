module Lessons {
  const DIRECTIVES_HIGHLIGHT_FILE =
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
                  .namespace { color: orangered; }
                  .string { color: seagreen; }
                  .keyword { color: purple; }
                  .type { color: blue; }

                  .line {
                    counter-increment: snippet;

                    &:before {
                      content: counter(snippet) "|";
                      margin-right: 5px;
                      opacity: 0.5;
                    }
                  }
                }

                fun render : Html {
                  <pre::root>
                    <code>
                      @highlight-file(Button.mint)
                    </code>
                  </pre>
                }
              }
              MINT
          },
          {
            path: "Button.mint",
            solution: "",
            contents:
              <<~MINT
              component Button {
                fun render : Html {
                  <button>"Hello World!"</button>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        The `@highlight-file` directive is similar to the `@highlight`
        directive, but it highlights a file instead of a block.

        In the example on the right we display the `Button.mint` file
        highlighted with some styles.

        ------------------------------------------------------------------------

        For more information check out the [reference page].

        [reference page]: /reference/directives/highlight-file
        MARKDOWN
    }
}
