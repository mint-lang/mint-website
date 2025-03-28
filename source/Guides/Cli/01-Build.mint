module Guides {
  const CLI_BUILD =
    <<#MARKDOWN(highlight)
    # Build
    The `build` command compiles your application into different files (
    JavaScript, HTML, CSS) to the `dist` directory by executing these steps:

    - Compiles the application into one or more JavaScript files. Each file is
      a [JavaScript module]. The `index.js` file will be the entrypoint of the
      application and other files `1.js`, `2.js`, etc... will contain dynamic
      code from either [async components] or from [defers].

    - Compiles the styles of each component into the `index.css` CSS file.
    - Generate a [web app manifest] if the `--generate-manifest` flag is used.
    - Copies all assets defined by `@asset` directives.

    - Generate favicons and application icons if they are set in the
      `mint.json` file.

    - Copies the Mint runtime `runtime.js` and all files under the `public`
      directory.

    - Generates the `index.html` file which will link the previously generated
      things.

    [JavaScript module]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules
    [web app manifest]: https://developer.mozilla.org/en-US/docs/Web/Manifest
    [async components]: /reference/components/async-components
    [defers]: /reference/control-flow/defer

    To avoid conflicts with public files all assets generated by mint will be
    in the `__mint__` directory.

    This is what building the scaffolded application by `init` looks like (
    asset hashes excluded):

    ```bash
    ➔ mint build --timings --verbose
    Mint - Building for production...
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    Building for production...
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ⚙ Clearing the "dist" directory..." 2.951ms
    ⚙ Building... 20.548ms
    ⚙ Writing __mint__/bottom-center.png (38.1KB)... 114μs
    ⚙ Writing __mint__/bottom-right.png (62.4KB)... 38μs
    ⚙ Writing __mint__/bottom-left.png (52.0KB)... 34μs
    ⚙ Writing __mint__/top-center.png (36.2KB)... 29μs
    ⚙ Writing __mint__/top-right.png (60.6KB)... 40μs
    ⚙ Writing __mint__/top-left.png (48.1KB)... 36μs
    ⚙ Writing __mint__/icon-512x512.png (100KB)... 92μs
    ⚙ Writing __mint__/icon-256x256.png (35.4KB)... 77μs
    ⚙ Writing __mint__/icon-196x196.png (24.4KB)... 67μs
    ⚙ Writing __mint__/icon-192x192.png (23.2KB)... 63μs
    ⚙ Writing __mint__/icon-180x180.png (21.6KB)... 66μs
    ⚙ Writing __mint__/icon-167x167.png (19.2KB)... 58μs
    ⚙ Writing __mint__/icon-152x152.png (16.7KB)... 63μs
    ⚙ Writing __mint__/icon-144x144.png (15.1KB)... 88μs
    ⚙ Writing __mint__/icon-128x128.png (12.6KB)... 64μs
    ⚙ Writing __mint__/icon-120x120.png (11.5KB)... 63μs
    ⚙ Writing __mint__/icon-96x96.png (8.28KB)... 60μs
    ⚙ Writing __mint__/icon-76x76.png (5.83KB)... 62μs
    ⚙ Writing __mint__/icon-72x72.png (5.35KB)... 60μs
    ⚙ Writing __mint__/icon-57x57.png (3.89KB)... 59μs
    ⚙ Writing __mint__/icon-48x48.png (2.95KB)... 52μs
    ⚙ Writing __mint__/icon-36x36.png (2.0KB)... 47μs
    ⚙ Writing __mint__/icon-32x32.png (1.75KB)... 48μs
    ⚙ Writing __mint__/icon-16x16.png (1.23KB)... 63μs
    ⚙ Writing __mint__/runtime.js (49.6KB)... 59μs
    ⚙ Writing __mint__/index.css (1.46KB)... 30μs
    ⚙ Writing __mint__/index.js (11.6KB)... 36μs
    ⚙ Writing index.html (2.55KB)... 36μs
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    Bundle size: 674KB
    Files: 28
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    Parsing files                              | 1.726ms
    Type Checking                              | 131.481ms
    Building application                       | 22μs
      Compiling intermediate representation... | 1.318ms
      Calculating dependencies for bundles...  | 20.256ms
      Bundling and rendering JavaScript...     | 2.995ms
    Generating index.html                      | 0μs
    Generating icons                           | 61μs
    Copying assets                             | 422μs
    Building index.css                         | 123μs
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    All done in 435.55ms!
    ```

    The result bundle (in the `dist` directory) can be statically served by a
    web server.

    ## Help

    ```bash
    ➔ mint build --help
    Usage:
      mint build [flags...] [arg...]

    Builds the project for production.

    Flags:
      --env, -e               # Loads the given .env file.
      --generate-manifest     # If specified, the web manifest will be generated.
      --generate-source-maps  # If specified, source maps will be generated.
      --help                  # Displays help for the current command.
      --no-optimize           # If specified, the resulting JavaScript code will not be optimized.
      --runtime               # If specified, the supplied runtime will be used instead of the default.
      --skip-icons            # If specified, the application icons will not be generated.
      --timings               # If specified, timings will be printed.
      --verbose               # If specified, all written files will be logged.
      --watch, -w             # If specified, will build on every change.
    MARKDOWN
}
