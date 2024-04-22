module References {
  const DIRECTIVES_HIGHLIGHT =
    <<#MARKDOWN(highlight)
    # Highlight Directive

    The `@highlight` directive returns the value of the block, and it's syntax
    highlighted version as `Tuple(a, Html)`. It is mainly used to display Mint
    source code of examples in documentation.

    ```mint
    component Main {
      fun render : Html {
        let {button, html} =
          @highlight {
            <button>
              "Hello World!"
            </button>
          }

        <>
          button
          <pre>
            <code>html</code>
          </pre>
        </>
      }
    }
    ```

    The example above results in this HTML:

    ```
    <span class="line">
      <
        <span class="namespace">button</span>
      >
      <span class="string">"Hello World!"</span>
      </
        <span class="namespace">button</span>
      >
    </span>
    ```

    MARKDOWN
}
