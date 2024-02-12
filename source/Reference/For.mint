module References {
  const FOR =
    <<#MARKDOWN(highlight)
    # for...of

    `for...of` is useful for iterating over either an `Array(a)`, `Set(a)` or a
    `Map(a,b)`

    The result of the iteration is always an array where the type of its items
    is from the type of the expression. In this example we iterate over an
    array of Strings and making them uppercase:

    ```mint
    for item of ["bob", "joe"] {
      String.toUpperCase(item)
    } // ["BOB", "JOE"]
    ```

    This example shows how to iterate over a map:

    ```mint
    let map =
      Map.empty()
      |> Map.set("name", "bob")
      |> Map.set("age", "33")

    for key, value of map {
      String.toUpperCase(key + ": " + value)
    } // ["name: bob", "age: 33"]
    ```

    The return type of this `for...of` expression is `Array(String)`

    ## Selecting items

    You can limit the items for which the iteration should take place with an
    optional `when` block (if the expression is `false` then the item will be
    skipped):

    ```mint
    for item of ["bob", "joe"] {
      String.toUpperCase(item)
    } when {
      item == "bob"
    } // ["BOB"]
    ```

    In the example we specified that the expression should only run (and return)
    for items which equals "bob".

    ## Indexes

    You can add an extra variable to get the index of the current item.

    ```mint
    for item, index of ["bob", "joe"] {
      index
    } // [0, 1]

    for key, value, index of map {
      index
    } // [0, 1]
    ```
    MARKDOWN
    |> ContentInstrumenter.instrument
}
