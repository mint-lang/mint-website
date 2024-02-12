module References {
  const PROGRAM =
    <<#MARKDOWN(highlight)
    # Program

    The program is the entirety of the source code worked by the compiler. The
    source gets parsed, type checked and compiled to an HTML file, a CSS file
    and one or more JavaScript files which eventually gets executed in a web
    browser.

    The program’s source code must be encoded in UTF-8.

    ## Top Level Scope

    Only [modules](/reference/modules),
         [custom types](/reference/custom-types),
         [components](/reference/components),
         [providers](/reference/providers),
         [locale definitions](/reference/locales),
         [routes](/reference/routes),
         [stores](/reference/stores) and
         [comments](/reference/comments) can be defined in the top-level scope.

    ```mint
    // This is a comment in the top level scope describing the module below.
    module Unicorn {
      // This is for the contents of the module
    }
    ```

    All top level entities defined in one file are available to all other files
    in the same project (this includes used packages) so **there is no feature
    for importing files**.

    ## Main Code

    The `Main` component is the one which gets executed and drawn to the page
    when the program is executed.

    ```mint
    component Main {
      fun render : String {
        "Hello World!"
      }
    }
    ```

    MARKDOWN
    |> ContentInstrumenter.instrument
}
