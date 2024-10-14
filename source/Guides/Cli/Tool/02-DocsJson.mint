module Guides {
  const CLI_TOOL_DOCS_JSON =
    <<#MARKDOWN(highlight)
    # Docs Json

    The `docs-json` tool generates API docmentation in JSON format.

    ```bash
    ➔ mint tool docs-json
    Mint - Generating JSON documentation
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ⚙ Generated documentation.
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    All done in 398.178ms!
    ```

    The same flags are available as for the [docs](/guides/cli/docs) command.

    ## Help

    ```bash
    ➔ mint tool docs-json --help
    Usage:
      mint tool docs-json [flags...] <output> [arg...]

    Generates API Documentation in JSON format.

    Flags:
      --help              # Displays help for the current command.
      --include-core      # If specified, documentation will be generated for the standard library as well.
      --include-packages  # If specified, documentation will be generated for used packages as well.
      --pretty            # If specified, the JSON will be pretty printed.

    Arguments:
      output (required)   # The output file to save it to.
    ```
    MARKDOWN
}
