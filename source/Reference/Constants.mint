async component Reference.Constants {
  fun render : Html {
    <<#MARKDOWN
    # Constants

    Constants can be added to **stores**, **modules**, **providers**,
    **suites**, and **components**.

    ```mint
    module Math {
      const PI = 3.141592653589793
    }
    ```

    Constants can be accessed like variables inside the scope of the entity
    which defined them and from outside they can be accessed with the
    following syntax:

    ```
    Math.PI
    ```

    > #{TablerIcons.ALERT_CIRCLE} The variable name of a constant must be in
    all-uppercase characters.

    MARKDOWN
  }
}
