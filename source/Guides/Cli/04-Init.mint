module Guides {
  const CLI_INIT =
    <<#MARKDOWN(highlight)
    # Init

    The `init` command scaffolds a new project. By default, it will scaffold an
    example project with some helpful content, but it can be configured to
    generate a plain empty project using the `--bare` flag.

    ```bash
    ➔ mint init my-project
    Mint - Initializing a new project
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ⚙ Writing files:
      ➔ source
        ➔ Content.mint
        ➔ Main.mint
      ➔ assets
        ➔ head.html
        ➔ top-center.png
        ➔ top-right.png
        ➔ top-left.png
        ➔ bottom-center.png
        ➔ logo.svg
        ➔ favicon.png
        ➔ bottom-right.png
        ➔ bottom-left.png
      ➔ tests
        ➔ Main.mint
      ➔ mint.json
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    All done in 1.844ms!
    ```

    ## Help

    ```bash
    ➔ mint init --help
    Usage:
      mint init [flags...] <name> [arg...]

    Initializes a new project.

    Flags:
      --bare     # If speficied, an empty project will be generated.
      --help     # Displays help for the current command.

    Arguments:
      name       # The name of the new project.
    ```
    MARKDOWN
}
