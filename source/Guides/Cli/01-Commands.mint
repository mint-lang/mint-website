module Guides {
  const CLI_COMMANDS =
    <<#MARKDOWN(highlight)
    # Commands

    In this section, you can find all the commands for the command line
    interface (CLI).

    ## Help

    ```bash
    ➔ mint --help
    Usage:
      mint [flags...] [arg...]

    Mint

    Flags:
      --help          # Displays help for the current command.

    Subcommands:
      build           # Builds the project for production
      clean           # Removes artifacts (directories) created by Mint
      compile         # Compiles the project into a single JavaScript file
      docs            # Starts the documentation server
      format          # Formats source files
      highlight       # Returns the syntax highlighted version of the given file
      init            # Initializes a new project
      install         # Installs dependencies
      lint            # Lints the project for syntax and type errors
      loc             # Counts Lines of Code
      ls              # Language Server
      sandbox-server  # Server for compiling sandbox applications
      start           # Starts the development server
      test            # Runs the tests defined for the project
      version         # Shows version
    ```

    MARKDOWN
}
