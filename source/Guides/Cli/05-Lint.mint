module Guides {
  const CLI_LINT =
    <<#MARKDOWN(highlight)
    # Lint

    The `lint` command reports syntax and type checking errors for the projects
    files. The exit code is **1** if there are errors or **0** if there are no
    errors.

    ```bash
    ➔ mint lint
    Mint - Linting
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    No errors were detected!
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    All done in 169.133ms!
    ```

    ## JSON output

    It's possible to generate an array of errors as JSON using the `--json`
    flag.

    ## Help

    ```bash
    ➔ mint lint --help
    Usage:
      mint lint [flags...] [arg...]

    Lints the project for syntax and type errors.

    Flags:
      --help  # Displays help for the current command.
      --json  # Output errors in a JSON format.

    ```
    MARKDOWN
}
