module Guides {
  const CLI_TEST =
    <<#MARKDOWN(highlight)
    # Test

    The `test` command runs the [tests] defined for the project in a headless
    browser (Chrome or Firefox).

    [tests]: /reference/testing

    ```bash
    ➔ mint test
    Mint - Running tests
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ⚙ Starting browser...
    ⚙ Test server started: http://127.0.0.1:3001/
    ⚙ Running tests:
    .
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    1 tests
      ➔ 1 passed
      ➔ 0 failed
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    All done in 807.191ms!
    ```

    ## Watch mode

    You can tell the test runner to re-run the tests when files change with
    the `--watch` (`-w`) flag.

    ## Running tests manually

    You can run the tests manually by providing the `--manual` (`-m`) flag and
    opening the displayed URL in a browser.

    In this mode the server is continuously running and watching for changes so
    you can make modifications and rerun the tests by refreshing the page.

    ## Help

    ```bash
    ➔ mint test --help
    Usage:
      mint test [flags...] <test> [arg...]

    Runs the tests defined for the project.

    Flags:
      --browser, -b (default: "chrome")                                    # Which browser to run the tests in (chrome, firefox).
      --browser-host, -x (default: ENV["BROWSER_HOST"]? || "127.0.0.1")    # Target host, useful when hosted on another machine.
      --browser-port, -c (default: (ENV["BROWSER_PORT"]? || "3001").to_i)  # Target port, useful when hosted on another machine.
      --env, -e                                                            # Loads the given .env file.
      --generate-source-maps                                               # If specified, source maps will be generated.
      --help                                                               # Displays help for the current command.
      --host, -h (default: ENV["HOST"]? || "127.0.0.1")                    # Host to serve the tests on.
      --manual, -m                                                         # Start the test server for manual testing.
      --port, -p (default: (ENV["PORT"]? || "3001").to_i)                  # Port to serve the tests on.
      --reporter, -r (default: "dot")                                      # Which reporter to use (dot, documentation),
      --runtime                                                            # If specified, the supplied runtime will be used instead of the default.
      --watch, -w                                                          # Watch files for changes and rerun tests.

    Arguments:
      test                                                                 # The path to the test file to run.
    ```
    MARKDOWN
}
