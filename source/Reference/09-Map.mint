module References {
  const MAP =
    <<#MARKDOWN(highlight)
    # Map

    `Map(key, value)` (associative array, symbol table, or dictionary) is a
    data structure of key value pairs where the types of keys and values are
    the same (respectively).

    ```mint
    // The type of the map is: Map(String, String)
    {
      "key1" => "value1",
      "key2" => "value2"
    }
    ```

    Unlike [records], keys can be of any type, for example here is an `Array`
    like map:


    ```mint
    // The type of the map is: Map(Number, String)
    {
      1 => "value1",
      2 => "value2"
    }
    ```

    > The map is implemented as an array of two element arrays `[[key, value],
      ...]`, so the lookup is linear O(n).

    [associative array]: https://en.wikipedia.org/wiki/Associative_array
    [records]: /reference/types/custom-types#composite-type

    ## Type

    The type of maps is inferred from their content, however you can define
    the type directly with the `of` keyword. It is useful for defining the type
    of empty maps:

    ```mint
    {}                     // Map(key, value)
    { "key" => "value" }   // Map(String, string)
    {} of Number => String // Map(Number, String)
    ```

    ## Accessing items

    We can access a value in the map with the bracket access syntax:

    ```mint
    let map =
      {
        "key1" => "value1",
        "key2" => "value2"
      }

    map["key1"] // Maybe(String)
    ```

    It returns a `Maybe(value)` because there might not be a value for the
    given key.
    MARKDOWN
}
