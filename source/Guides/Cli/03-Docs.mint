module Guides {
  const CLI_DOCS =
    <<#MARKDOWN(highlight)
    # Docs

    The `docs` command formats generates API documentation for your project
    to the `docs` directory. It is a static HTML bundle (mostly a page for
    every top-level entity) that can be hosted anywhere.

    ```bash
    ➔ mint-dev docs
    Mint - Generating documentation
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ⚙ Clearing the "docs" directory... 138μs
    ⚙ Generating documentation... 140.856ms
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    All done in 255.062ms!
    ```

    ## Including core & other packages

    By default documentation is only generated for your project, but if you
    need to include entities in the standard library or the dependencies used
    you can use two flags:

      * `--include-core` - will include the standard library as well
      * `--include-packages` - will include all depenencies as well

    ## Help

    ```bash
    ➔ mint docs --help
    Usage:
      mint-dev docs [flags...] <directory> [arg...]

    Generates API Documentation.

    Flags:
      --help                # Displays help for the current command.
      --include-core        # If specified, documentation will be generated for the standard library as well.
      --include-packages    # If specified, documentation will be generated for used packages as well.

    Arguments:
      directory (required)  # The directory to generate the docs to.
    ```
    MARKDOWN
}
