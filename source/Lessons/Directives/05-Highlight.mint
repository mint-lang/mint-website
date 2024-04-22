module Lessons {
  const DIRECTIVES_HIGHLIGHT =
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
                  let {button, code} =
                    @highlight {
                      <button>"Hello World!"</button>
                    }

                  <div>
                    button

                    <pre::root><code>code</code></pre>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        The `@highlight` directive returns the value of the block, and its
        syntax highlighted version as `Tuple(a, Html)`.

        In the example on the right, we render a button a display its
        highlighted source code below it with some styles.

        ------------------------------------------------------------------------

        For more information, check out the [reference page].

        [reference page]: /reference/directives/highlight
        MARKDOWN
    }
}
