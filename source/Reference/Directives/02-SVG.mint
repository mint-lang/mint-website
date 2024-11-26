module References {
  const DIRECTIVES_SVG =
    <<#MARKDOWN(highlight)
    # Svg Directive

    The `@svg` directive allows you to **inline an [SVG file]** as `Html`:

    [SVG file]: https://en.wikipedia.org/wiki/SVG

    ```
    my-app
    ├── svgs
    │   └── icon.svg
    ├── source
    │   └── Main.mint
    └── mint.json
    ```

    This component inlines the `icon.svg` from the `svgs` folder.

    ```mint
    component Main {
      fun render : Html {
        <div>
          @svg(../svgs/icon.svg)
          @svg(/svgs/icon.svg)
        </div>
      }
    }
    ```

    It's (almost) the same as copy-pasting the SVG itself into the code.

    ## Requirements

    The inlined **SVG needs to be valid** - the compiler will try to parse it
    and if it fails will show a nice error message - and required to have the
    following attributes (in order to be rendered correctly): **viewBox**,
    **height** and **width**.
    MARKDOWN
}
