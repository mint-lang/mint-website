module References {
  const COMPONENTS_COMPUTED_PROPERTIES =
    <<#MARKDOWN(highlight)
    # Computed Properties

    Computed properties are functions that work like properties, they are
    defined with the `get` keyword and no arguments.

    ```mint
    component Greeter {
      property name : String = ""

      get text : String {
        "\#{word} \#{name}!"
      }

      // Type annotation is optional...
      get word {
        "Hello"
      }

      fun render : Html {
        <div>
          <{ text }>
        </div>
      }
    }
    ```
    MARKDOWN

}
