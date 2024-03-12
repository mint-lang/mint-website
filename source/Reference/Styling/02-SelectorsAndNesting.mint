module References {
  const STYLING_SELECTORS_AND_NESTING =
    <<#MARKDOWN(highlight)
    # Selectors and Nesting

    Styles can include among other things [selectors] and [at-rules].

    [selectors]: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_selectors
    [at-rules]: https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule

    ```mint
    component Main {
      style root {
        /* A CSS property. */
        color: cyan;

        /* This is a sub rule which uses the descendant selector. */
        a {
          color: blue;

          // This is a nested selector, the ampersand character references
          // the rule it resides in.
          &:focus {
            color: red;
          }
        }

        /* An at-rule for responsive design. */
        @media (max-width: 600px) {
          color: orange;
        }
      }

      fun render : Html {
        <div::root>
          <a>
            <{ "Hello world!" }>
          </a>
        </div>
      }
    }
    ```

    ## Nesting

    Selectors, **@media** and **@supports** can be nested in each other infinitely:

    ```mint
    style base {
      color: red;

      div {
        color: blue;

        @supports (display: grid) {
          display: grid;

          b {
            font-weight: normal;
          }
        }

        span {
          color: yellow;

          @media (max-width: 500px) {
            font-weight: bold;
          }
        }
      }
    }
    ```

    ## At-rules

    The following at-rules are supported currently: [@media], [@supports],
    [@font-face] and [@keyframes].

    - **@font-face** and **@keyframes** cannot be nested in sub   selectors,
      they can only appear in the style block itself, **@media** and
      **@supports** can appear in nested selectors as well.

    - **@font-face** and **@keyframes** rules are global, so styles in other
      components can use defined entities.

    [@keyframes]: https://developer.mozilla.org/en-US/docs/Web/CSS/@keyframes
    [@font-face]: https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face
    [@supports]: https://developer.mozilla.org/en-US/docs/Web/CSS/@supports
    [@media]: https://developer.mozilla.org/en-US/docs/Web/CSS/@media
    MARKDOWN
}
