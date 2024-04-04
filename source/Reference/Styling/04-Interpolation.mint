module References {
  const STYLING_INTERPOLATION =
    <<#MARKDOWN(highlight)
    # Interpolation

    You can use the standard interpolation syntax `\#{...}` in property values:

    ```mint
    component Mint {
      state color : String = "red"

      style root {
        color: \#{color};
      }

      fun render : Html {
        <div::root>
          "Hello"
        </div>
      }
    }
    ```

    You can use any number of interpolations in a value:

    ```mint
    style root {
      box-shadow: \#{x} \#{y} \#{blur} \#{spread} \#{color};
    }
    ```

    Interpolations will be substituted into the string value of the property so
    the type of the interpolation must be `String` or `Number`.
    MARKDOWN
}
