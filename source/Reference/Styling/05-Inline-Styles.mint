module References {
  const STYLING_INLINE_STYLES =
    <<#MARKDOWN(highlight)
    # Inline Styles

    You can use inline styles just like in HTML in two different ways:

    ```mint
    component Main {
      fun render : Html {
        <div>
          // As a String
          <div style="color: red;">
            "I am red!"
          </div>

          // As a Map(String, String)
          <div style={{"color" => "red"}}>
            "I am red!"
          </div>
        </div>
      }
    }
    ```
    MARKDOWN
}
