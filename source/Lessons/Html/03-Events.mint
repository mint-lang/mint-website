module Lessons {
  const HTML_EVENTS =
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
                  <div onClick={() { Window.alert("Hello!") }}>
                    "Click Me!"
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        You can set event handlers on HTML elements using the `on` attributes:

        ```mint
        <div onClick={() { Window.alert("Hello!") }}>
          "Click Me!"
        </div>
        ```

        These handlers can take one of two possible function types:

        * `Function(Html.Event, a)`
        * `Function(a)`

        In regular JavaScript, there are multiple event objects with different
        values. [`Html.Event`](https://www.mint-lang.com/api/records/Html.Event)
        is a record which contains normalized values, so it can be used in all
        event handlers.
        MARKDOWN
    }
}
