module References {
  const BLOCKS =
    <<#MARKDOWN(highlight)
    # Blocks

    Blocks are one or more expressions grouped together with curly braces. Each
    expression is evaluated in order and the value of the last expression is
    returned. Any variables assigned within the block can only be used within
    the block.

    ```mint
    {
      let name = "Joe"

      "Hello \#{name}"
    }
    ```

    There are some entities where their bodies are blocks: [html attributes],
    [for expressions], [functions], [computed properties], [tests], [routes],
    [if expressions], [highlight directives] and [format directives].

    [computed properties]: /reference/components/computed-properties
    [highlight directives]: /reference/directives/highlight
    [format directives]: /reference/directives/format
    [for expressions]: /reference/control-flow/for
    [html attributes]: /reference/html#attributes
    [if expressions]: /reference/control-flow/if
    [functions]: /reference/functions
    [routes]: /reference/routes
    [tests]: /reference/testing

    ## Early Return

    You can return early in block using the `return` keyword:

    ```mint
    {
      let name = "Joe"

      return "Hello \#{name}"

      // Unreachable code...
      "Bye \#{name}"
    }
    ```

    Additionally you can return early from a `let` destruction:

    ```mint
    {
      let whatsThis =
        (maybe : Maybe(String)) {
          let Maybe.Just(value) = maybe or return "It's nothing!"

          "It's a \#{value}!"
        }

      whatsThis(Maybe.Just("cat")) // It's a cat!
      whatsThis(Maybe.Nothing)     // It's nothing!
    }
    ```

    MARKDOWN
}
