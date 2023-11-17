async component Reference.StateManagement {
  fun render : Html {
    <<#MARKDOWN
    # State Management

    Before we cover **stores** and **components** you need to learn how Mint
    manages state.

    In Mint everything is **immutable**, which has the benefit of knowing that
    data cannot accidentally change in the program.

    ```mint
    let x = "Joe" // x can't change
    ```

    Every program needs to have mutation to function, so if everything is
    immutable how is mutation done? Mint has the concept of **state**:
    mutable variables that can be defined in **stores**, **components** and
    **providers**:

    ```mint
    state name : String = "Joe"
    ```

    A state can only be mutated in an **asynchronous** way using the `next`
    expression:

    ```mint
    component Item {
      state name : String = "Joe"

      fun render : Html {
        <div onClick={() { next { name: "Bob" } }}>
          name
        </div>
      }
    }
    ```

    The return type of a next expression is `Promise(Void)` because it's an
    asynchronous operation and it does not return any value.

    Because it's asynchronous next epressions needs to be **awaited** if you
    want to use the updated value:

    ```mint
    await next { name: "Joe" }
    Debug.log(name) // "Joe"

    next { name: "Bob" }
    Debug.log(name)
    // "Joe" - Not changed because the next wasn't awaited
    ```
    MARKDOWN
  }
}
