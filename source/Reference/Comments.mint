module References {
  const COMMENTS =
    <<#MARKDOWN(highlight)
    ## Comments

    Comments are used to add hints, notes, suggestions, or warnings to your
    code. This can make it easier to read and understand. They can also be used
    to disable code to prevent it from being executed; this can be a valuable
    debugging tool. Mint supports single-line and multi-line comments.

    Single line comments start with `//`; this makes all text following it on
    the same line into a comment. For example:

    ```mint
    // Set a variable.
    let name =
      "Joe"
    ```

    Multi-line comments start with `/*` and ends with `*/`:

    ```mint
    /*
    Converts "Joe" it to upper case variant: "JOE".
    */
    String.toUpperCase(name)
    ```

    MARKDOWN
    |> ContentInstrumenter.instrument
}
