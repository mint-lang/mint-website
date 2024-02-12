module References {
  const TYPE_SYSTEM =
    <<#MARKDOWN(highlight)
    # Type System

    In Mint the types and type definitions are only for the type checker and
    compiler, they are not available or used by the runtime.

    Because of that types can be defined in any type definition (except for
    composite types), so for example if `Time` is not defined as a composite
    type then when writing this will define `Time` as a type:

    ```mint
    module Time {
      fun now : Time {
        `new Date()`
      }
    }
    ```

    Since only this function defines this as a return type we can safely use
    the same type in type signatures of other functions:

    ```mint
    fun month (time : Time) : Number { `\#{time}.getMonth()` }
    fun day (time : Time) : Number { `\#{time}.getDay()` }
    ```

    because the `Time.now()` is the only place values of `Time` can come from.
    MARKDOWN
}
