module Guides {
  const CLI_INSTALL =
    <<#MARKDOWN(highlight)
    # Install

    The `install` command installs packages that are defined in the
    `mint.json` file (`dependencies` object).

    For example installing this dependency:

    ```json
    {
      "dependencies": {
        "mint-tabler-icons": {
          "repository": "https://github.com/mint-lang/mint-tabler-icons",
          "constraint": "1.0.0 <= v < 2.0.0"
        }
      }
    }
    ```

    Looks like this:

    ```bash
    Mint - Installing dependencies
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ⚙ Constructing dependency tree...
      ✔ Cloned mint-tabler-icons (https://github.com/mint-lang/mint-tabler-icons.git)

    ⚙ Resolving dependency tree...
      ◈ mint-tabler-icons ➔ 1.0.0

    ⚙ Copying packages...
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    All done in 792.912ms!
    ```

    Installed packages are stored in the `.mint` directory in the project.

    ## Help

    ```bash
    ➔ mint install --help
    Usage:
      mint install [flags...] [arg...]

    Installs dependencies.

    Flags:
      --help  # Displays help for the current command.
    ```
    MARKDOWN
}
