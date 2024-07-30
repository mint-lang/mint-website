module References {
  const TUPLE =
    <<#MARKDOWN(highlight)
    # Tuple

    A tuple is a data structure which contains a fixed set of values, where
    each value can have a different type.

    - they can contain two or more of items (no empty or single element)
    - they are useful when you don't want to declare a record
    - their items can be destuctured and matched against

    ## Type

    The type of tuples is `Tuple(type1, type2, ...)` where each parameter is
    an item of a tuple.

    For example the type `Tuple(String, Number, Bool)` represents a tuple
    where the first element is a `String` the second is a `Number` and the
    third is a `Bool`

    ## Syntax

    Tuples can be created with the following syntax:

    ```mint
    {"First Value", 10, true} // Tuple(String, Number, Bool)
    ```

    ## Destructuring

    To get the items of a tuple, we need to destructure it (assign each item
    to a variable) or use brackets `[]`:

    ```mint
    let {first, second, third} =
      {"First Value", 10, true}

    {"First Value", 10, true}[0] /* "First Value" */
    ```

    Destructuring can be used in **statements**, **case expressions** and
    **for expressions**:

    ```mint
    case {"First Value", 10, true} {
      /* match by value (will not match) */
      {"A", 0, false} => "A"

      /* match by value (will match) */
      {"First Value", 10, true} => "B"

      /* destructure */
      {a, b, c} => a
    }

    let {first, second, third} =
      {"First Value", 10, true}

    for ({x, y} of [{0, 0}]) {
      x + y
    }
    ```

    When matching tuples in a case expression, a destructuring will make it
    exhaustive.
    MARKDOWN
}
