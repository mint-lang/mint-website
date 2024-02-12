module References {
  const COMPONENTS_CONNECTING_TO_STORES =
    <<#MARKDOWN(highlight)
    # Connecting Stores

    Components refer to stores in order to use functions and properties from
    them which can be done with `connect` keyword:

    ```mint
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
    ```

    When connecting a store, the component must use the exposing keyword to
    list the particular functions or properties it will use.

    ## Exposing with a different name

    You can expose a connected function or property by a different name using
    the `as` notation:

    ```mint
    connect Counter exposing { count as myCount }
    ```
    MARKDOWN
    |> ContentInstrumenter.instrument
}
