async component Reference.Equality {
  fun render : Html {
    <<#MARKDOWN
    # Equality

    In Mint, two objects are considered equal if they have the same type and
    all its values are equal. The equality operator is: `==`

    ```mint
    { name: "Jon Doe", age: 27 } == { age: 27, name: "Jon Doe" } /* true */
    Maybe.Just("A") == Maybe.Just("A") /* true */
    ["A"] == ["A"] /* true */
    ```

    In JavaScript, the same `==` operator would return `false`. We say Mint
    uses **_logical_** equality.

    In addition to **custom types**, the following types use logical equality:

    - `SearchParams`
    - `FormData`
    - `Result`
    - `String`
    - `Number`
    - `Array`
    - `Maybe`
    - `Bool`
    - `Date`
    - `Map`
    - `Set`

    > #{TablerIcons.INFO_CIRCLE} Types that does not implement the logical
    equality operation fall back to using the JavaScript strict equality
    operator `===`

    MARKDOWN
  }
}
