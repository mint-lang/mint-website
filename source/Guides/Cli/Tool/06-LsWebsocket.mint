module Guides {
  const CLI_TOOL_LS_WEBSOCKET =
    <<#MARKDOWN(highlight)
    # Ls Websocket

    The `ls-websocket` tool starts the language server over an WebSocket server
    so browsers can connect to it and use it to show an editor in a web page.

    ```
    ➔ mint tool ls-websocket
    Mint - Running language server over websocket
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ⚙ Language server started on http://0.0.0.0:3004/
    ```

    Every connection has it's own separate language server process.

    ## Sandbox Mode

    The server can be started in a sandbox mode which means that every
    websocket connection will create a temporary directory and use it as the
    workspace. The directory is deleted after the connection is closed.

    This is used to serve the tutorial and sandboxes for this website.

    ## Help

    ```bash
    ➔ mint tool ls-websocket --help
    Usage:
      mint tool ls-websocket [flags...] [arg...]

    Starts the language server (websocket server).

    Flags:
      --help                                               # Displays help for the current command.
      --host, -h (default: ENV["HOST"]? || "0.0.0.0")      # The host to serve the application on.
      --port, -p (default: (ENV["PORT"]? || "3004").to_i)  # The port to serve the application on.
      --sandbox                                            # If specified, server will start in sandbox mode.
    ```
    MARKDOWN
}
