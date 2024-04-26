module Guides {
  const CLI_CLEAN =
    <<#MARKDOWN(highlight)
    # Clean

    The `clean` command removes generated artifacts:

    * `.mint` directory - this contains the installed packages
    * `dist` directory - this contains the built application

    ```bash
    ➔ mint clean
    Mint - Removing directories
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    Deleting: .mint
    Deleting: dist
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    All done in 20.226ms!
    ```

    ## Package Cache

    Mint uses Git repositories as packages and stores them for caching purposes
    in a temporary directory, which depends on the operating system. To remove
    this directory, you can use the `--package-cache` flag.

    ```bash
    ➔ mint clean --package-cache
    Mint - Removing directories
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    Deleting: /tmp/mint-packages
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    All done in 5.464ms!
    ```

    ## Help

    ```bash
    ➔ mint clean --help
    Usage:
      mint clean [flags...] [arg...]

    Removes artifacts (directories) created by Mint.

    Flags:
      --help           # Displays help for the current command.
      --package-cache  # If specified, cleans the package cache.
    ```
    MARKDOWN
}
