module Lessons {
  const LANGUAGE_ARRAYS =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                fun render : Html {
                  <div>
                    for item of ["Joe", "World"] {
                      <div>
                        item
                      </div>
                    }
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        An `Array(a)` is a generic type containing elements of any other type.
        They are typically created with an array literal:

        ```mint
        [1, 2, 3]        // Array(Number)
        ["A", "B", "C"]  // Array(String)
        ```

        You can define the type of arrays using the `of` keyword. It is useful
        for defining the type of empty arrays:

        ```mint
        [] of Number
        [1,2,3] of Number
        ```

        We can access an item at the given index using the bracket  notation:

        ```mint
        let array =
          [1, 2, 3]

        array[0] == Maybe.Just(1)
        ```

        When accessing an item this way, the type of the item will be `Maybe(a)`
        where `a` is the type of the item in the array. This is so because there
        might not be an item at that index.
        MARKDOWN
    }
}
