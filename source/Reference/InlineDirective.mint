module References {
  const INLINE_DIRECTIVE =
    <<#MARKDOWN(highlight)
    # Inline Directive

    The inline directive allows you to **inline the contents of a file** as
    `String`:

    ```
    my-app
    ├── assets
    │   └── data.txt
    ├── source
    │   └── Main.mint
    └── mint.json
    ```

    This component inlines the `data.txt` from the `assets` folder.

    ```mint
    component Main {
      fun render : Html {
        <div>
          @inline(../assets/data.txt)
        </div>
      }
    }
    ```

    It's the same as copy-pasting the file itself into the code.
    MARKDOWN
    |> ContentInstrumenter.instrument
}
