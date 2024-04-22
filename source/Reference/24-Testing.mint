module References {
  const TESTING =
    <<#MARKDOWN(highlight)
    # Testing

    Mint has built-in support for testing with the `suite` and `test` blocks:

    ```mint
    suite "String" {
      const HELLO_WORLD = "Hello World!"

      fun upperCased {
        String.toUpperCase(HELLO_WORLD)
      }

      test "Hello World" {
        upperCased() == "HELLO WORLD!"
      }
    }
    ```

    A `suite` block defines a set of tests and can have helper [functions] and
    [constants]. A `test` blocks defines a test which is basically an assertion
    which defines the outcome of the test: if `true` the test passes if `false`
    the test fails.

    [constants]: /reference/constants
    [functions]: /reference/functions

    ```mint
    suite "Tests" {
      test "This fails!" {
        false
      }

      test "This passes!" {
        true
      }
    }
    ```

    > Test are only type checked and compiled when running tests.

    ## Running tests

    Tests can be run with the `mint test` command:

    ```bash
    Mint - Running Tests
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ⚙ Loaded environment variables from: .env
    ⚙ Test server started: http://127.0.0.1:3001/
    ⚙ Starting browser...
    ⚙ Running tests:
    ........................................................................
    ........................................................................
    ........................................................................
    ........................................................................
    ........................................................................
    ........................................................................
    ........................................................................
    .....................................
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    597 tests
      ➔ 597 passed
      ➔ 0 failed
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    All done in 14.222s!
    ```

    > Above is the result of running the standard library tests.

    You will need to have [Chromium] (or [Google Chrome]) or [Firefox]
    installed to run tests since we run them in a browser to be as close to
    the metal as possible.

    Check the [test command] for more information on running tests.

    [Chromium]: https://en.wikipedia.org/wiki/Chromium_(web_browser)
    [Google Chrome]: https://en.wikipedia.org/wiki/Google_Chrome
    [Firefox]: https://en.wikipedia.org/wiki/Firefox
    [test command]: /guides/cli/test

    ## Async Tests

    Tests can be asynchronous, so you can `await` things in them:

    ```mint
    test "Asynchronous test" {
      let data =
        await SomeModule.load()

      data == "Some value"
    }
    ```

    ## Test Context

    A `Test.Context(a)` is a way to have multiple steps and assertions in a
    test:

    ```mint
    test "Context Example" {
      Test.Context.of(5)
      |> Test.Context.then((number : Number) { await (number + 2) })
      |> Test.Context.assertEqual(7)
    }
    ```

    See the [Test.Context](/api/modules/Test.Context) module for more
    information.

    ## Html Testing

    You can test `Html` with the `Test.Html` module which uses test contexts:

    ```mint
    test "Html Example" {
      <div>"Hello World!"</div>
      |> Test.Html.start()
      |> Test.Html.assertTextOf("div", "Hello World!")
    }
    ```

    See the [Test.Html](/api/modules/Test.Html) module for more
    information.
    MARKDOWN
}
