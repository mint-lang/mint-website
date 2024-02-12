module Lessons {
  const LANGUAGE_LITERALS =
    {
      let content =
        <<#MARKDOWN(highlight)
        ## Boolean

        Represents the `Boolean` type. It has two possible values `true` and
        `false`.

        ```mint
        true  // A Bool that is true
        false // A Bool that is false
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

      {
        previousLesson: "/language/types",
        nextLesson: "/language/strings",
        category: "Language",
        title: "Literals",
        files: [],
        contents:
          ContentInstrumenter.instrument(
            skipAnchors: true,
            html: content)
      }
    }
}
