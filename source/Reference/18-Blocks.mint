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

    There are some entities where their bodies are blocks:
      [html attributes](/reference/html),
      [for expressions](/reference/control-flow/for),
      [functions](/reference/functions),
      [computed properties](/reference/components/computed-properties),
      [tests](/reference/tests),
      [routes](/reference/routes),
      [if expressions](/reference/control-flow/if),
      [highlight directives](/reference/directives/highlight) and
      [format directives](/reference/directives/format).

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
        (value : Maybe(String)) {
          let Maybe.Just(value) = maybe or return "It's nothing!"

          "It's a \#{value}!"
        }

      whatsThis(Maybe.Just("cat")) // It's a cat!
      whatsThis(Maybe.Nothing)     // It's a nothing!
    }
    ```

    MARKDOWN
}
