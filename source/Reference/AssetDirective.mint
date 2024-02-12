module References {
  const ASSET_DIRECTIVE =
    <<#MARKDOWN(highlight)
    # Asset Directive

    The asset directive allows you to **reference** a file relative to the
    current file. Basically, it returns the path to the file, but more
    importantly it tells the compiler that an asset is used. During the build
    process the assets are bundled along with the generated files.

    For example, given this file structure:

    ```
    my-app
    ├── images
    │   └── some-image.jpg
    ├── source
    │   └── Main.mint
    └── mint.json
    ```

    This component references the `some-image.jpg` from the `images` folder.

    ```mint
    component Main {
      fun render : Html {
        <img src={@asset(../images/some-image.jpg)}/>
      }
    }
    ```

    During the build process the asset will be put into the `dist/assets`
    directory and the image tag will point to that image.
    MARKDOWN
    |> ContentInstrumenter.instrument
}
