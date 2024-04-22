module References {
  const DIRECTIVES_HIGHLIGHT_FILE =
    <<#MARKDOWN(highlight)
    # Highlight File Directive

    The `@highlight-file` directive returns the syntax highlighted version of
    the referenced file as `Html`. It is mainly used to display Mint source
    code of examples in documentation.

    ```mint
    // Button.mint
    <button>
      "Hello World!"
    </button>

    // Main.mint
    component Main {
      fun render : Html {
        @highlight-file(Button.mint)
      }
    }
    ```

    The contents of the file is not checked and won't show any errors if it's
    not valid (syntax or type checking wise).

    MARKDOWN
}
