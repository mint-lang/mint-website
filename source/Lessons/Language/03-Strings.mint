module Lessons {
  const LANGUAGE_STRINGS =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                fun render : Html {
                  <pre>
                    "\u{1F469}\u{200D}\u{1F4BB} こんにちは Mint \u{1F343}\n"
                    "\u{1F600}\n"
                    "\"X\" marks the spot\n"
                    "Hello" + " World" + "!\n"
                    String.reverse("1 2 3 4 5")
                  </pre>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        A `String` represents a sequence of characters, they are created with
        string literals using quotes `""`:

        ```mint
        "A single line string!"

        "A multiline line string
        An other line"
        ```

        Strings can be broken apart with the `\` operator:

        ```mint
        "First line" \
        "Second line" \
        "Third line" == "First lineSecond lineThird line"
        ```

        Strings can be concatenated with the `+` operator:

        ```mint
        ("Hello" + " World" + "!") == "Hello World!"
        ```

        Other values can be interpolated into strings using interpolation:

        ```mint
        let name =
          "World"

        "Hello \#{name}!" == "Hello World!"
        ```

        Since Mint is a strongly typed language, you can only interpolate other
        `String` or `Number` typed values (numbers are implicitly converted to
        string). If you try to use something else, you will get a nice error
        message.
        MARKDOWN
    }
}
