module References {
  const FIELD_ACCESS =
    <<#MARKDOWN(highlight)
    # Field Access

    Sometimes you want to have a function that extracts a value from a record
    like this:

    ```mint
    type User {
      name : String,
      age : Number
    }

    (user : User) : String { user.name }
    ```

    Writing a function like this every time is not ideal, so we have a syntax
    sugar for this:

    ```mint
    .name(User)
    ```

    The above shorthand means: give me a function which returns the value of
    the `name` field from a `User` record (which would be the exact function
    in the first example).

    This shorthand comes in handy when using the pipe operator:

    ```mint
    [
      { name: "John", age: 32 },
      { name: "Joe", age: 32 }
    ]
    |> Array.map(.name(User))
    |> Array.map(String.toUpperCase)
    ```
    MARKDOWN
}
