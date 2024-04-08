module References {
  const CONTROL_FLOW_IF_ELSE =
    <<#MARKDOWN(highlight)
    # if ... else

    The `if ... else` conditional expression returns one of two values based on
    the condition. It looks like this:

    ```mint
    if condition {
      value1
    } else {
      value2
    }
    ```

    You will get nice error messages if the following is not met:

    * The condition must evaluate to type `Bool`
    * The values of both branches must evaluate to the same type
    * In most cases the else branch must be present, this ensures you handle
      all possibilities.

    ## else if ...

    Multiple `if...else` statements can be written in sequence (the brackets
    for the `else` branch can be omitted):

    ```mint
    if number > 5 {
      true
    } else if number > 2 {
      true
    } else {
      false
    }
    ```

    ## Omitting else

    The else branch can be omitted in the following cases:

    ```mint
    // In styles...
    style root {
      if condition {
        color: red;
      }
    }

    // If it returns `Html`
    if condition {
      <div></div>
    }

    // If it returns `String`
    if condition {
      <div></div>
    }

    // If it returns `Maybe(a)`
    if condition {
      Maybe.Just("Hello")
    }

    // If it returns `Void`
    if condition {
      void
    }

    // If it returns `Array(a)`
    if condition {
      ["Hello", "World!"]
    }

    // If it returns `Promise(Void)`
    if condition {
      next { value: "Hello World!" }
    }
    ```

    When that happens and the condition is `false` an empty version of the type
    is returned instead:

    * `Html` - An empty fragment is returned `<></>`
    * `Array(a)` - An empty array is returned `[]`
    * `String` - An empty string is returned `""`
    * `Promise(Void)` - `Promise(Void)` is returned
    * `Maybe(a)` - `Maybe.Nothing` is returned
    * `Void` - `Void` is returned

    ## Destructuring

    You can destrcuture a value instead of providing a condition using the
    `if let ... else` syntax:

    ```mint
    if let Maybe.Just(value) = maybe {
      "The maybe is a `Maybe.Just`"
    } else {
      "The maybe is a `Maybe.Nothing`"
    }
    ```

    If the destrcuturing is successfull then the truthy branch will be returned
    (and all variables of the destructuring is available), if it cannot be
    destrcutured then the `else` branch will be returned.

    ### Awaiting Promises

    You can use the `await` keyword before the subject to wait for a promise
    to resolve before doing the pattern matching:

    ```mint
    if let Ok(response) = await request {
      "The request succeeded!"
    } else {
      "The request failed!"
    }
    ```

    The return type of an expression like that will always be `Promise(a)`
    where `a` is the type of the branches.
    MARKDOWN
}
