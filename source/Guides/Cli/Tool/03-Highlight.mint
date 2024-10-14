module Guides {
  const CLI_TOOL_HIGHLIGHT =
    <<#MARKDOWN(highlight)
    # Highlight

    The `highlight` tool syntax highlights source files in the terminal or
    as an HTML file.

    ## Help

    ```bash
    ➔ mint tool highlight --help
    Usage:
      mint tool highlight [flags...] <path> [arg...]

    Returns the syntax highlighted version of the given file.

    Flags:
      --help           # Displays help for the current command.
      --html           # If specified, print the highlighted code as HTML.

    Arguments:
      path (required)  # The path to the file.
    ```
    MARKDOWN
}
