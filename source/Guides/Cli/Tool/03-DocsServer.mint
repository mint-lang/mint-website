module Guides {
  const CLI_TOOL_DOCS_SERVER =
    <<#MARKDOWN(highlight)
    # Docs Server

    The `docs-server` tool serves API docmentation over HTTP.

    ## Help

    ```bash
    ➔ mint tool docs-server --help
    Usage:
      mint tool docs-server [flags...] [arg...]

    API Documentation Server.

    Flags:
      --help                                               # Displays help for the current command.
      --host, -h (default: ENV["HOST"]? || "0.0.0.0")      # The host to serve the documentation on.
      --port, -p (default: (ENV["PORT"]? || "3002").to_i)  # The port to serve the documentation on.
    ```
    MARKDOWN
}
