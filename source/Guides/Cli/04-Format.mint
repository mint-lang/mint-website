module Guides {
  const CLI_FORMAT =
    <<#MARKDOWN(highlight)
    # Format

    The `format` command formats `*.mint` files. By default it will format all
    source and test files in the current project.

    ## Specifing files to format

    You can specify the file or pattern of files to format by passing it as an
    argument. For example this only formats one file:

    ```bash
    ➔ mint format source/Main.mint
    ```

    Using a pattern to format all files:

    ```bash
    ➔ mint format "**/*.mint"
    ```

    It's importart that you pass the pattern as a string since the command only
    takes one argument and [globs] that.

    [globs]: https://en.wikipedia.org/wiki/Glob_(programming)

    ## Checking for differences

    The command can be used to check the files if they are formatted or not
    instead of formatting them using the `--check` flag.

    ```bash
    ➔ mint format --check
    Mint - Formatting files
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    Not formatted: source/Main.mint
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    All done in 138.628ms!
    ```

    If there are not formatted files the command exists with exit code **1**
    otherwise it will exit with exit code **0**.

    ## Formatting from standard input

    You can format the value of the [standard input] using the `--stdin` flag
    which will print the formatted code in the [standard output]. This is allows
    piping into the command.

    [standard output]: https://en.wikipedia.org/wiki/Standard_streams
    [standard input]: https://en.wikipedia.org/wiki/Standard_streams

    Here is an example of formatting a file in place using the flag:

    ```bash
    ➔ cat source/Main.mint | mint format --stdin > source/Main.mint
    ```

    ## Help

    ```bash
    ➔ mint format --help
    Usage:
      mint format [flags...] <pattern> [arg...]

    Formats .mint files.

    Flags:
      --check  # Checks that formatting code produces no changes.
      --help   # Displays help for the current command.
      --stdin  # Formats code from STDIN and writes it to STDOUT.

    Arguments:
      pattern  # The pattern which determines which files to format.
    ```
    MARKDOWN
}
