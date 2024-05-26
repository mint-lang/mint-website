module References {
  const SIGNALS =
    <<#MARKDOWN(highlight)
    # Signals

    Signals are a special version of a `state` which can modify itself in
    reaction to outside events.

    ```mint
    signal greeting : String {
      // After 1000 milliseconds emit a new value.
      {
        await Timer.timeout(1000)
        emit "Joe!"
      }

      // Default value
      "Hello"
    }
    ```

    Instead of a default value it requires a block which returns the default
    value and subscribes to events. To emit a new value you can use the `emit`
    keyword.

    > Signals can only be used in [stores] and [providers].

    [providers]: /reference/providers
    [stores]: /reference/stores
    MARKDOWN
}
