module References {
  const ENVIRONMENT_VARIABLES =
    <<#MARKDOWN(highlight)
    # Environment Variables

    When building web applications usually the same application needs to work
    in different environments (development, staging, production). There are
    some [variables] like API endpoints that differ depending on the
    environment.

    [variables]: https://en.wikipedia.org/wiki/Environment_variable

    Mint offers a simple feature for managing these variables. You can create
    different files `.env` and `.env.production` which have contents like this:

    ```
    ENDPOINT=http://localhost:3001
    WSENDPOINT=ws://localhost:3001
    ```

    Then in Mint code you can inline them:

    ```mint
    component Main {
      fun render : Html {
        <div>
          @ENDPOINT
        </div>
      }
    }
    ```

    ## Specifying .env file

    Solme commands in the CLI has a flag `-e` or `--env` which takes the path
    to the `.env` file:

    ```bash
    mint start --env .env.production
    ```
    MARKDOWN
}
