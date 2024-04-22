module References {
  const PROGRAM =
    <<#MARKDOWN(highlight)
    # Program

    The program is the entirety of the source code worked by the compiler. The
    source gets **parsed**, **type checked** and **compiled** to **an HTML
    file**, **a CSS file** and one or more **JavaScript files** which
    eventually gets executed in a web browser.

    The program’s source code must be encoded in UTF-8.

    ## Top Level Scope

    Only [modules], [custom types], [components], [providers], [locale
    definitions], [routes], [stores] and [comments] can be defined in the
    top-level scope.

    [components]: /reference/components/introduction
    [custom types]: /reference/types/custom-types
    [locale definitions]: /reference/locale
    [providers]: /reference/providers
    [comments]: /reference/comments
    [modules]: /reference/modules
    [routes]: /reference/routes
    [stores]: /reference/stores

    ```mint
    // This is a comment in the top level scope describing the module.
    module Unicorn {
      // This is for the contents of the module.
    }
    ```

    All top level entities defined in one file are available to all other files
    in the same project (this includes used packages) so [there is no feature
    for importing files](/reference/source-files).

    ## Main Code

    The `Main` component is the one which gets executed and drawn to the page
    when the program is run.

    ```mint
    component Main {
      fun render : String {
        "Hello World!"
      }
    }
    ```
    MARKDOWN
}
