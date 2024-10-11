module Guides {
  const CLI_START =
    <<#MARKDOWN(highlight)
    # Start

    The `start` command runs the development server for the project. By default
    the browser will reload the page when source files are changed.

    ```bash
    ➔ mint start
    Mint - Running the development server
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ⚙ Development server started on http://0.0.0.0:3000/
    ```

    ## Format files

    The server automatically format files when they change using the `--format`
    flag.

    ## Help

    ```bash
    ➔ mint start --help
    Usage:
      mint start [flags...] [arg...]

    Starts the development server.

    Flags:
    --env, -e                                            # Loads the given .env file.
    --format                                             # Formats the source files when they change.
    --help                                               # Displays help for the current command.
    --host, -h (default: ENV["HOST"]? || "0.0.0.0")      # The host to serve the application on.
    --no-reload                                          # Do not reload the browser when something changes.
    --port, -p (default: (ENV["PORT"]? || "3000").to_i)  # The port to serve the application on.
    ```
    MARKDOWN
}
