module News {
  const POLISHING_AND_FUNCTION_CAPTURES =
    {
      subtitle: "Mint 0.22.0 and 0.23.* Releases",
      title: "Polishing and Function Captures",
      time: Time.utc(2025, 3, 20),
      author: "Gusztáv Szikszai",
      contents:
        defer {
          let captureExample =
            <SimpleIde
              orientation="vertical"
              previewHeight="75px"
              contents={
                <<~MINT
                component Main {
                  fun render : Html {
                    let add =
                      (a : Number, b : Number) : Number {
                        a + b
                      }

                    // The standard way.
                    let addOneV1 = (x : Number) { add(1, x) }

                    // The new way `_` as a placeholder for the argument.
                    let addOneV2 = add(1, _)

                    <div>
                      "addOneV1: \#{addOneV1(2)}"
                      <br/>
                      "addOneV2: \#{addOneV2(2)}"
                    </div>
                  }
                }
                MINT
              }
            />

          let pipeExample =
            <SimpleIde
              orientation="vertical"
              previewHeight="150px"
              contents={
                <<~MINT
                component Main {
                  fun render : Html {
                    <div>
                      (Math.random() * 10)
                      |> Math.floor
                      |> String.charAt("Hello World!", _)
                      |> String.toUpperCase()

                      <br/>

                      // It even works with labels.
                      (Math.random() * 10)
                      |> Math.floor
                      |> String.charAt(string: "Hello World!", index: _)
                      |> String.toUpperCase()
                    </div>
                  }
                }
                MINT
              }
            />

          let formExample =
            <SimpleIde
              orientation="vertical"
              previewHeight="150px"
              contents={
                <<~MINT
                store Application {
                  state url : Url = Window.url()

                  fun setUrl {
                    next { url: Window.url() }
                  }
                }

                component Main {
                  connect Application exposing { url }

                  fun render : Html {
                    <div>
                      "Current URL: \#{Url.toString(url)}"

                      <form action="/some-url">
                        <label for="name">"Name"</label>
                        <br/>
                        <input type="text" id="name" name="name"/>
                        <br/>
                        <input type="submit"/>
                      </form>
                    </div>
                  }
                }

                routes {
                  * {
                    Application.setUrl()
                  }
                }
                MINT
              }
            />

          <<#MARKDOWN(highlight)
        Mint is a type-safe programming language for writing single page
        applications. In this post, we will take a look at what's new in the
        releases `0.22.0` and `0.23.*`.

        In these releases, we focused on polishing the language and added some
        quality of life features. In these releases [12 issues] have been
        closed.

        [12 issues]: https://github.com/mint-lang/mint/issues?q=sort%3Aupdated-desc%20is%3Aissue%20state%3Aclosed%20milestone%3A0.23.0%20OR%20milestone%3A0.22.0%20

        ## Function captures

        It is now possible to create functions from other functions with
        function capturing:

        #{captureExample}

        They can be especially useful in pipes:

        #{pipeExample}

        ## Intercepting form navigation

        Mint already intercepts navigation of links so the application handles
        them instead of the browser, but there was one navigation case we
        didn't cover and its form submissions with the `GET` method.

        Now Mint will handle those submissions as well:

        #{formExample}

        ## Set functions

        [Ryan Prior] added some functions for working with the `Set` type:

        `Set.reduce`, `Set.union`, `Set.intersection`, `Set.difference`,
        `Set.isDisjoint` and `isSuperset`.

        Thank you for these additions!

        [Ryan Prior]: https://github.com/ryanprior

        ## Better errors

        Some error messages have been updated or added to better reflect the
        underlying error:

        - Added error message for missing body in an inline function.
        - Added proper error message for the impossible error.
        - Show better error message for missing variant.
        - Show better error location for missing CSS definition semicolon.
        - Show proper error message when trying to destrucutre a parameter that doesn't exist.
        - Show proper error when there are component and module with the same name.

        ## What's next?

        We continue on fixing bugs and issues that come up and there is one
        feature (automatic decoding of custom types) we would like to add before
        releasing `1.0.0` (which is planned for this year).

        ---

        These were just the highlights of the release, make sure to read the full
        release notes:
        [`0.22.0`](https://github.com/mint-lang/mint/releases/tag/0.22.0),
        [`0.23.0`](https://github.com/mint-lang/mint/releases/tag/0.23.0),
        [`0.23.1`](https://github.com/mint-lang/mint/releases/tag/0.23.1),
        [`0.23.2`](https://github.com/mint-lang/mint/releases/tag/0.23.2)
          MARKDOWN
        }
    }
}
