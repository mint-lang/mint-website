module References {
  const STYLING_INLINE_STYLES =
    <<#MARKDOWN(highlight)
    # Inline Styles

    You can use inline styles just like in HTML in two different ways:

    ```mint
    component Main {
      fun render : Html {
        /* As a Map(String, String) */
        let style =
          Map.empty(Map.set("color", "red"))

        <div>
          /* As a String */
          <div style="color: red;">
            "I am red!"
          </div>

          <div style={style}>
            "I am red!"
          </div>
        </div>
      }
    }
    ```
    MARKDOWN
}
