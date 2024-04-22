module Lessons {
  const STYLING_AT_RULES =
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
                  animation: animate infinite 1s;

                  /* An at-rule for responsive design. */
                  @media (max-width: 1000px) {
                    color: orange;
                  }

                  @keyframes animate {
                    from { opacity: 0; }
                    to { opacity: 1; }
                  }
                }

                fun render : Html {
                  <div::root>
                    "Hello world!"
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        You can write some of the [at-rules] in style block: [@media],
        [@supports], [@font-face] and [@keyframes].

        - **@font-face** and **@keyframes** cannot be nested in sub selectors,
          they can only appear in the style block itself, **@media** and
          **@supports** can appear in nested selectors as well.

        - **@font-face** and **@keyframes** rules are global, so styles in
          other components can use defined entities.

        [at-rules]: https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule
        [@keyframes]: https://developer.mozilla.org/en-US/docs/Web/CSS/@keyframes
        [@font-face]: https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face
        [@supports]: https://developer.mozilla.org/en-US/docs/Web/CSS/@supports
        [@media]: https://developer.mozilla.org/en-US/docs/Web/CSS/@media

        Try resizing the browser to see the text in orange!
        MARKDOWN
    }
}
