module References {
  const ROUTES =
    <<#MARKDOWN(highlight)
    # Routes

    In Mint, each route of an application are defined at the top level with the
    `routes` block. Here is an example of an application where you can list
    users on one route and show a single user on another:

    ```mint
    routes {
      / {
        Application.setPage("index")
      }

      /users/:id (id: Number) {
        Application.setPage("show")
        Application.loadUser(id)
      }
    }
    ```

    Keep in mind that routes are matched in the order they are defined from
    **top to bottom** and they are used to set state, not render things.

    ## Matching Parameters

    You can match parts of the path as parameters. Parameters are typed checked
    and if it can't convert the `String` into the desired type it means that
    the route will not be matched.

    Here is the syntax for matching things:

    - `:name` - a parameter to capture from the path up to `/`, `?`, `#`, or
      end of string

    - `*splat` - a splat to capture from the path up to `?`, `#`, or end of
      string

    - `()` - Optional group that doesn't have to be part of the query. Can
      contain nested optional groups, params, and splats anything else

    - free form literals

    This is an example of matching blog posts:

    ```mint
    routes {
      /blog {
        Application.setPage("blog")
      }

      /blog/:slug (slug: String) {
        Application.setPage("post")
        Application.loadPost(slug)
      }
    }
    ```

    ## Matching everything

    You can use the `*` to match every not matched route. The position of this
    route does not matter, it will be matched after every other route.

    ```mint
    routes {
      / {
        Application.setPage("index")
      }

      * {
        Application.setPage("not_found")
      }
    }
    ```
    MARKDOWN
}
