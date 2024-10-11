module Guides {
  const CLI_TOOL_CLEAN =
    <<#MARKDOWN(highlight)
    # Clean

    The `clean` tool removes generated artifacts:

    * `.mint` directory - this contains the installed packages
    * `dist` directory - this contains the built application

    ```bash
    ➔ mint tool clean
    Mint - Removing directories
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    Deleting: .mint
    Deleting: dist
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    All done in 20.226ms!
    ```

    ## Package cache

    Mint uses Git repositories as packages and stores them for caching purposes
    in a temporary directory, which depends on the operating system. To remove
    this directory, you can use the `--package-cache` flag.

    ```bash
    ➔ mint tool clean --package-cache
    Mint - Removing directories
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    Deleting: /tmp/mint-packages
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    All done in 5.464ms!
    ```

    ## Help

    ```bash
    ➔ mint tool clean --help
    Usage:
      mint tool clean [flags...] [arg...]

    Removes artifacts (directories) created by Mint.

    Flags:
      --help           # Displays help for the current command.
      --package-cache  # If specified, cleans the package cache.
    ```
    MARKDOWN
}
