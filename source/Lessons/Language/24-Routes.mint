module Lessons {
  const LANGUAGE_ROUTES =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              store Application {
                state route : String = "/"

                fun setRoute (value : String) {
                  next { route: value }
                }
              }

              routes {
                / { Application.setRoute("/") }
                /users { Application.setRoute("/users") }
                /users/:id (id : String) { Application.setRoute("/users/\#{id}") }
              }

              component Main {
                fun render : Html {
                  <div>
                    <div>
                      "Current route: "
                      Application.route
                    </div>

                    <div>
                      <a href="/">"Home"</a>
                    </div>

                    <div>
                      <a href="/users">"Users"</a>
                    </div>

                    <div>
                      <a href="/users/10">"User 10"</a>
                    </div>

                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        In an application, you want to display different things based on where
        the user is. In traditional JavaScript SPAs that is done with a library,
        but here it's part of the language:

        ```mint
        routes {
          /users {
            // Fetch users and display them.
          }

          /users/:id (id: Number) {
            // Fetch a user and display it.
          }
        }
        ```

        The logic is very simple: when a route is matched, its block is
        executed, and you can use this to do what needs to be done.

        You can navigate to any route with an [anchor element]:

        [anchor element]: https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a

        ```mint
        <a href="/users">"Users"</a>
        ```

        In a usual application, the following steps are taken when a route is
        matched:

        1. Parse any route parameters
        2. Load data over HTTP
        3. Store data in a `store`
        4. Set the page in a `store` (usually `Application`)
        MARKDOWN
    }
}
