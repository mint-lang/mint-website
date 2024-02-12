module References {
  const STORES =
    <<#MARKDOWN(highlight)
    # Stores

    Stores are global containers of application specific data. They are defined
    with the `store` keyword:

    ```mint
    store Counter.Store {
      state counter : Number = 0

      fun increment : Promise(Void) {
        next { counter: counter + 1 }
      }

      fun decrement : Promise(Void) {
        next { counter: counter - 1 }
      }
    }
    ```

    In the example above, we defined a store for a global counter with a
    function to increment it and one to decrement it.

    Stores are:

    - **global** - which means they are accessible from anywhere (for example:
      `Counter.Store.counter`).

    - **mutable** - their data can be changed using a `next` call (but only
      inside the store)

    - they can only contain [functions](/reference/functions),
      [states](/reference/state-management) and [constants](/reference/constants).

    You can read more on mutation in [state management](/reference/state-management)
    page.

    ## Connecting to Components

    Stores can be connected to components to expose entities in the components
    scope using the `connect` keyword:

    ```mint
    component Main {
      connect Counter exposing { counter, increment, decrement }
    }
    ```
    MARKDOWN
    |> ContentInstrumenter.instrument
}
