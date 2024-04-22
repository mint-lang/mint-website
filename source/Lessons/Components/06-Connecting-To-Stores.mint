module Lessons {
  const COMPONENTS_CONNECTING_TO_STORES =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              store Counter {
                state count : Number = 0

                fun setCount (count : Number) : Promise(Void) {
                  next { count: count }
                }
              }

              component Main {
                connect Counter exposing { count, setCount }

                fun handleClick (event : Html.Event) : Promise(Void) {
                  setCount(count + 1)
                }

                fun handleContextMenu (event : Html.Event) : Promise(Void) {
                  Html.Event.preventDefault(event)
                  setCount(0)
                }

                fun render : Html {
                  <div
                    onContextMenu={handleContextMenu}
                    onClick={handleClick}>

                    "Count: " + Number.toString(count)

                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Components can connect to stores in order to subscribe to changes of
        their data and reference their states and functions.

        In the example on the right, you can see a variation of the counter
        example where the data is stored in a store.

        The `Main` component connects to the `Counter` store with the `connect`
        keyword, followed by what entities to expose from it.

        ```mint
        connect Counter exposing { count, setCount }
        ```
        MARKDOWN
    }
}
