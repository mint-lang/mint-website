module Guides {
  const CLI_TOOL_LOC =
    <<#MARKDOWN(highlight)
    # Loc

    The `loc` tool counts the lines of code in the project.

    ```bash
    ➔ mint tool loc
    Mint - Counting lines of code
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ⚙ Files: 2
    ⚙ Lines of code: 136
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    All done in 20.226ms!
    ```

    ## Help

    ```bash
    ➔ mint tool loc --help
    Usage:
      mint tool loc [flags...] [arg...]

    Counts LOC (lines of code).

    Flags:
      --help  # Displays help for the current command.
    ```
    MARKDOWN
}
