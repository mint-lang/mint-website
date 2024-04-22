module References {
  const ARRAY =
    <<#MARKDOWN(highlight)
    # Array

    An `Array(a)` is an ordered and integer-indexed generic collection of
    elements of a specific type `a`.

    Arrays are typically created with an array literal denoted by square
    brackets (`[]`) and individual elements separated by a comma (`,`).

    ```mint
    ["a", "b", "c"]
    ```

    ## Type

    The type of arrays is inferred from their content, however you can define
    the type directly with the `of` keyword. It is useful for defining the type
    of empty arrays:

    ```mint
    []           // Array(a)
    [1, 2, 3]    // Array(Number)
    [] of Number // Array(Number)
    ```

    ## Accessing Items

    We can access an arrays item at a given index using the following syntax:

    ```mint
    let array =
      [1, 2, 3]

    array[0] // Maybe(Number)
    ```

    When accessing an item this way, the type of the item will be `Maybe(a)`
    where `a` is the type of item in the array. This is so because there might
    not be an item at that index.

    ## Pattern Matching

    We can use pattern matching in some places in order to match certain
    values or get items of the array:

    ```mint
    case ["A", "B", "C"] {
      [a, ...middle, b] => "" /* Array at least with two elements (middle can be empty) */
      [...head, tail] => ""   /* Array at one element (head can be empty) */
      [head, ...tail] => ""   /* Array at one element (tail can be empty) */
      [...items] => ""        /* Items would be the array itself */
      [a, b] => ""            /* Array with only two elements */
      ["a"] => ""             /* Array with only one specific element */
      [a] => ""               /* Array with only one element */
      [] => ""                /* Empty array  */
      => ""                   /* Fallback as usual */
    }
    ```

    MARKDOWN
}
