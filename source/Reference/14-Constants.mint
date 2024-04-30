module References {
  const CONSTANTS =
    <<#MARKDOWN(highlight)
    # Constants

    Constants may be useful for values that are used throughout your program,
    permitting them to be named and to ensure there are no differences in the
    definition between each use.

    They can be added to **stores**, **modules**, **providers**,
    **suites**, and **components**. The name of a constant must be in
    all-uppercase characters, and their type is inferred from their value.

    ```mint
    module Math {
      const PI = 3.141592653589793
    }
    ```

    They can be accessed like variables inside the scope of the entity
    which defined them, and from outside they can be accessed with the
    following syntax:

    ```mint
    Math.PI
    ```
    MARKDOWN
}
