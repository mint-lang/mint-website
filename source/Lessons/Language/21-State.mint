module Lessons {
  const LANGUAGE_STATE =
    {
      files:
        [
          {
            path: "Main.mint",
            solution:
              <<~MINT
              component Main {
                state value : String = ""

                fun render : Html {
                  <div>
                    <button onClick={() { next { value: "Hello World!" }}}>
                      "Set Value"
                    </button>

                    <input
                      onChange={(event : Html.Event) {
                        next { value: Dom.getValue(event.target) }
                      }}
                      value={value}
                      type="text"/>
                  </div>
                }
              }
              MINT,
            contents:
              <<~MINT
              component Main {
                state value : String = ""

                fun render : Html {
                  <div>
                    <input
                      onChange={(event : Html.Event) {
                        next { value: Dom.getValue(event.target) }
                      }}
                      value={value}
                      type="text"/>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        In Mint, state is managed explicitly (there are no two-way bindings)
        using the `state` and `next` keywords.

        The `state` keyword defines a mutable variable in [components],
        [stores] or [providers].

        [components]: /reference/components/introduction
        [providers]: /reference/providers
        [stores]: /reference/stores

        ```mint
        state value : String = ""
        ```

        It consists of the name, type (optional) and default value. To assign a
        new value to a state, you need to use the `next` keyword:

        ```mint
        next { value: "I was updated!" }
        ```

        The update is **asynchronous**, so you need to `await` (we will learn
        more about it in a different lesson) it if you want to use the updated
        value afterward.

        As an exercise add a `<button>"Set Value"</button>` before the input
        that sets the value to `Hello World!`.
        MARKDOWN
    }
}
