module Guides {
  const MIGRATION_GUIDES_0_20_0 =
    <<#MARKDOWN(highlight)
    # 0.19.0 ⇢ 0.20.0

    This guide will walk you through the migration from `0.19.0` to `0.20.0`.
    There are many changes in `0.20.0` but your project should compile without
    major code modifications since most of the changes are deprecations.

    ## ⚠ Breaking Changes ⚠

    The `external` field was removed from the `mint.json` file. The reason for
    the removal is that use of them in packages made the order of all external
    files ambiguous.

    ### External Stylesheets

    There are two ways to migrate external stylesheets.

    1. Put the files from `external.stylesheets` to the `public` directory,
       then include them in `head.html`:

       ```html
       <link type="text/css" rel="stylesheet" href="styles.css"/>
       ```

    2. Use the `AssetsLoader` module to load the asset programmatically:

       ```mint
       await AssetLoader.loadStylesheet(@asset(../assets/styles.css))
       ```

    ### External JavaScripts

    There are two ways to migrate external JavaScripts.

    1. Put the files from `external.javascripts` to the `public` directory,
       then include them in `head.html`:

       ```html
       <script type="text/javascript" src="library.js"/>
       ```

    2. Use the `AssetsLoader` module to load the asset programmatically:

       ```mint
       await AssetLoader.loadJavaScript(@asset(../assets/library.js))
       ```

    ## Deprecations

    A number of syntax feature are being deprecated, they will still be valid
    in `0.20.0` but will be removed in `0.21.0`.

    - Constant access is now using the dot `.` instead of the colon `:`

      ```mint
      // 0.19.0, 0.20.0
      Module:CONSTANT

      // 0.20.0, 0.21.0
      Module.CONSTANT
      ```

    - Enums are now using the dot `.` instead of the double colon `::`

      ```mint
      // 0.19.0, 0.20.0
      Maybe::Just

      // 0.20.0, 0.21.0
      Maybe.Just
      ```

    - `enum` and `record` is now `type`

      ```mint
      // 0.19.0, 0.20.0
      enum Maybe(a) {
        Nothing
        Just(a)
      }

      record User {
        name : String,
        age : Number
      }

      // 0.20.0, 0.21.0
      type Maybe(a) {
        Nothing
        Just(a)
      }

      type User {
        name : String,
        age : Number
      }
      ```

    - Html expressions `<{...}>` will be removed

      ```mint
      // 0.19.0, 0.20.0
      <div>
        <{ children }>
      </div>

      // 0.20.0, 0.21.0
      <div>
        children
      </div>

    ## Changes

    It is possible now to omit the type name in and destructurings:

    ```mint
    // 0.19.0
    case Maybe::Just("a") {
      Maybe::Nothing => ""
      Maybe::Just(a) => a
    }

    // 0.20.0
    case Maybe.Just("a") {
      Nothing => ""
      Just(a) => a
    }
    ```
    MARKDOWN
}
