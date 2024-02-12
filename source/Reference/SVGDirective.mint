module References {
  const SVG_DIRECTIVE =
    <<#MARKDOWN(highlight)
    # Svg Directive

    The svg directive allows you to **inline an SVG file** as `Html`:

    ```
    my-app
    ├── svgs
    │   └── some-svg.svg
    ├── source
    │   └── Main.mint
    └── mint.json
    ```

    This component inlines the `some-svg.svg` from the `svgs` folder.

    ```mint
    component Main {
      fun render : Html {
        <div>
          @svg(../svgs/some-svg.svg)
        </div>
      }
    }
    ```

    It's the same as copy-pasting the SVG itself into the code.
    MARKDOWN
    |> ContentInstrumenter.instrument
}
