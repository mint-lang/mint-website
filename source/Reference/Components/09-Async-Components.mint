module References {
  const COMPONENTS_ASYNC_COMPONENTS =
    <<#MARKDOWN(highlight)
    # Async Components

    A component can be marked with `async` to make it load asynchronously. Mint
    achieves this by compiling that component and everything it uses into a
    different file and loading it when the component needs to be rendered.

    ```mint
    async component Greeter {
      fun render : Html {
        <div>
          "Hello World! I'm loaded asynchronously!"
        </div>
      }
    }

    component Main {
      state shown : Bool = false

      fun render : Html {
        <div>
          <button onclick={() { next { shown: true } }}>
            "Show Greeting!"
          </button>

          if shown {
            <Greeter/>
          }
        </div>
      }
    }
    ```

    In the example above, clicking the button changes the `shown` state and the
    component is re-rendered which triggers the loading of the `Greeter`
    component which once loaded shows the greeting.
    MARKDOWN
}
