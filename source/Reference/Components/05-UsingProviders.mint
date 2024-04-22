module References {
  const COMPONENTS_USING_PROVIDERS =
    <<#MARKDOWN(highlight)
    # Using Providers

    A [provider] represents a source of asynchronous events. To subscribe to a
    provider, you `use` it and pass it a record that contains the subscription
    data.

    ```mint
    component Main {
      state counter : Number = 0

      use Provider.Tick {
        ticks: () : Promise(Void) {
          next { counter: counter + 1 }
        }
      }

      fun render : Html {
        <div>
          Number.toString(counter)
        </div>
      }
    }
    ```

    In the above example, we will update the counter every second using the
    [tick provider]. You can check other built-in providers [here].

    [provider]: /reference/providers
    [tick provider]: https://github.com/mint-lang/mint/blob/master/core/source/Provider/Tick.mint
    [here]: https://github.com/mint-lang/mint/blob/master/core/source/Provider/
    MARKDOWN
}
