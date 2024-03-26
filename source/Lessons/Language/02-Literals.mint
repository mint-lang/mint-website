module Lessons {
  const LANGUAGE_LITERALS =
    {
      files: [],
      contents:
        <<#MARKDOWN(highlight)
        ## Boolean

        Represents the `Boolean` type. It has two possible values `true` and
        `false`.

        ```mint
        false // A Bool that is false
        true  // A Bool that is true
        ```
        ## Number

        Represents a `Number`. In Mint, all numbers are floats.

        ```mint
        3.14
        42
        -10
        ```

        ## Regexp

        Regular expressions are represented by the `Regexp` type.

        ```mint
        /foo|bar/
        /h(e+)llo/
        /\d+/
        /あ/
        ```
        MARKDOWN
    }
}
