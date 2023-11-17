async component Reference.Literals {
  fun render : Html {
    <<#MARKDOWN
    # Literals

    Fixed values such as **numbers**, **strings** and **booleans** are
    called literals (or primitive types), this page goes through all literal
    types in the language.

    ## Bool

    Represents the [Boolean type](https://en.wikipedia.org/wiki/Boolean_data_type).
    It has two possible values:

    ```mint
    true
    false
    ```

    ## Number

    Represents the [Number type](https://developer.mozilla.org/en-US/docs/Glossary/Number)
    from JavaScript.

    ```mint
    3.14
    42
    -10
    ```

    ## String

    Represents the [String type](https://developer.mozilla.org/en-US/docs/Glossary/String)
    from JavaScript.

    ```mint
    "hello world"
    ```

    String concatenation works the same as in JavaScript:

    ```mint
    "hello" + " world"
    ```

    Escaping works as in JavaScript:

    ```mint
    "hello \"world\""
    ```

    Strings can span multiple lines:

    ```mint
    "hello
     world"
    ```

    And can be split into smaller consecutive parts:

    ```mint
    "hello world" == "hello world"
    ```

    Expressions can be interpolated in a string with the `\#{...}` syntax (only
    `String` and `Number`):

    ```mint
    let name = "Joe"

    "Hello \#{name}" /* Hello Joe */
    ```

    ## Regular Expression

    Regular expressions are patterns used to match character combinations
    in strings. and work mostly the same as it's JavaScript couterpart:

    ```mint
    /ab+c/
    ```

    MARKDOWN
  }
}
