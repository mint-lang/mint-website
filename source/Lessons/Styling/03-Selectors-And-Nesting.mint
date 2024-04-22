module Lessons {
  const STYLING_SELECTORS_AND_NESTING =
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
                  span {
                    color: blue;
                  }
                }

                fun render : Html {
                  <div::root>
                    "Hello there..."
                    <span>"I'm blue!"</span>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Style blocks can include [selectors] and [at-rules] besides CSS
        definitions.

        [selectors]: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_selectors
        [at-rules]: https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule

        If you are familiar with CSS preprocessors llike [Sass] or [Less] then
        you probably know how they work.

        [Sass]: https://en.wikipedia.org/wiki/Sass_(style_sheet_language)
        [Less]: https://en.wikipedia.org/wiki/Less_(style_sheet_language)

        Basically, instead of writing multiple descendant selectors like this:

        ```mint
        style root {
          article { display: grid; }
          article div { color: red; }
          article div span { font-size: 0.75em; }
        }
        ```

        You can just nest selectors like this:

        ```mint
        style root {
          article {
            display: grid;

            div {
              color: red;

              span {
                font-size: 0.75em;
              }
            }
          }
        }
        ```
        MARKDOWN
    }
}
