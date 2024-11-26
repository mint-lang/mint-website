module References {
  const DIRECTIVES_ASSET =
    <<#MARKDOWN(highlight)
    # Asset Directive

    The `@asset` directive allows you to **reference** a file relative to the
    current file (or from the root of the project). Basically, it returns the
    path to the file, but more importantly it tells the compiler that an asset
    is used. During the build process, the assets are bundled along with the
    generated files.

    For example, given this file structure:

    ```
    my-app
    ├── images
    │   └── some-image.jpg
    ├── source
    │   └── Main.mint
    └── mint.json
    ```

    This component references the `some-image.jpg` from the `images` folder:

    ```mint
    component Main {
      fun render : Html {
        <div>
          <img src={@asset(../images/some-image.jpg)}/>
          <img src={@asset(/images/some-image.jpg)}/>
        </div>
      }
    }
    ```

    During the build process, the asset will be put into the `__mint__`
    directory and the image tag will point to that image.

    ## Hash

    All referenced assets have a hash appended to its final filename which is
    generated (as an MD5 hash) from the contents of the file (build) or from
    the absolute path of the file (development).

    For example the `data.txt` with the content:
    ```
    Hello World!
    ```

    Will generate this file name:
    ```
    data_ed076287532e86365e841e92bfc50d8c.txt
    ```

    This is mainly for making sure that obsolete content is not cached by the
    browser: if a file has new content, the hash is different and the browser
    needs to load the new file.
    MARKDOWN
}
