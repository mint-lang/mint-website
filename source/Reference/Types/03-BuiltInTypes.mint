module References {
  const TYPES_BUILT_IN_TYPES =
    <<#MARKDOWN(highlight)
    # Built-in Types

    Mint comes with several built-in types. These are used in control
    expressions: `Maybe`, `Result`, `Promise`, `Deferred` and `Void`.

    ## Maybe

    The maybe type represents a value which may or may not exist. It's defined
    as such:

    ```mint
    type Maybe(value) {
      Just(value)
      Nothing()
    }
    ```

    For example, here is a user who may or may not have a car:

    ```mint
    type Car {
      engine : String,
      type : String
    }

    type User {
      car : Maybe(Car),
      name : String
    }
    ```

    ## Result

    The result type, represents a **synchronous** task that might fail. It is
    defined as such:

    ```mint
    type Result(error, value) {
      Err(error)
      Ok(value)
    }
    ```

    In Mint, results have two parameters `Result(error, value)`:

    - **error** - the type of the error
    - **value** - the type of the value

    For example, converting a `String` to a `Number`:

    - If the conversion fails, we get an error:

      ```mint
      let Result.Err(error) =
        Number.fromString("blah")
      ```

    - If the conversion succeeds, we get a value:

      ```mint
      let Result.Ok(number) =
        Number.fromString("10")
      ```


    ## Promise

    The promise type represents an **asynchronous** computational task. In
    Mint, promises have only one parameter **result** - which is the type of
    the result of the computation.

    A good example is the HTTP request, which in Mint looks like this:

    ```mint
    Promise(Result(Http.ErrorResponse, Http.Response))
    ```

    The `Http.ErrorResponse` is a record containing information about the error
    that happened while `Http.Response` is a record containing the response of
    the request.

    ## Deferred

    This type represents a piece of code which is loaded asynchronously from a
    different file. To learn more about it, check out the [defer expression].

    [defer expression]: /reference/control-flow/defer

    ## Void

    The void type represents an expression that does not have any value. `Void`
    can only be explicitly returned with the `void` keyword.

    MARKDOWN
}
