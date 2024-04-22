module References {
  const STYLING_ARGUMENTS =
    <<#MARKDOWN(highlight)
    # Arguments

    A style block can take many arguments, just like a function can:

    ```mint
    style root (color : String) {
      color: \#{color};
    }
    ```

    The arguments are passed like it would to a function:

    ```mint
    <div::root("red")>
      "I am red!"
    </div>

    <div::root("blue")>
      "I am blue!"
    </div>
    ```

    The arguments work exactly like they do on [functions], so default arguments
    and named arguments are supported.

    [functions]: /reference/functions
    MARKDOWN
}
