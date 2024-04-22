module Guides {
  const GETTING_STARTED =
    <<#MARKDOWN(highlight)
    # Getting Started

    Hi and welcome to Mint Guide!

    First, let's make sure to [install](/install) the compiler so that we may
    try all the examples listed in this guide. Once installed, the Mint
    compiler should be available as `mint` command.

    Let's try it!

    ## Mint version

    We may check the Mint compiler version. If Mint is installed correctly, then
    we should see something like this:

    ```bash
    ➔ mint --version
    Mint 0.20.0
    ```

    Great!

    ## Mint help

    Now, if we want to list all the options given by the compiler, we may run
    `mint` program without any arguments:

    ```bash
    ➔ mint
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

    More details about using the compiler can be found in our [compiler manual].

    [compiler manual]: /guides/cli/commands

    ## Hello Mint

    Now that we are familiar with the CLI, we can take the next step and create
    a project with the `init` command:

    ```bash
    ➔ mint init my-project
    Mint - Initializing a new project
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ⚙ Writing files:
      ➔ source
        ➔ Content.mint
        ➔ Main.mint
      ➔ assets
        ➔ head.html
        ➔ top-center.png
        ➔ top-right.png
        ➔ top-left.png
        ➔ bottom-center.png
        ➔ logo.svg
        ➔ favicon.png
        ➔ bottom-right.png
        ➔ bottom-left.png
      ➔ tests
        ➔ Main.mint
      ➔ mint.json
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    All done in 2.975ms!
    ```

    Then enter into the directory and start the development server with the
    `mint start` command:

    ```bash
    ➔ cd my-project/
    ➔ mint start
    Mint - Running the development server
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ⚙ Development server started on http://0.0.0.0:3000/
    ```

    After navigating to the shown URL, you should see something like this:

    #{<img
      src={@asset(../../assets/init-screenshot.jpg)}
      alt="Initial Project Screenshot"/>}

    That's it! Now you are ready to start looking around and making changes to
    the code.
    MARKDOWN
}
