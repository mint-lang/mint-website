module Lessons {
  const LANGUAGE_TYPES =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                state name : String = "Mint"

                fun render : String {
                  name
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Mint is a strongly typed programming language, which means that you will
        encounter a lot of type definitions.

        Syntax wise, a type definition consists of an identifier starting with a
        capital letter, and followed by letters and numbers.

        Types appear in Mint code in multiple places, usually preceded by a
        colon:

        ```mint
        state name : String
        ```

        A type gives a name to a value conforming to a specific data structure.

        ```mint
        // The type of this value is `String`
        "Hello World!"
        ```

        A type can have **type variables**. These variables make the type
        [polymorphic], which means that the type can be used with other types
        instead of the type variable.


        ```mint
        // This is a generic type where the `a`
        // can be any other type.
        Maybe(a)

        // This represents just a `String` or nothing.
        Maybe(String)
        ```

        These kinds of types are called [composite types] because the data
        structure they describe are composed of multiple types.

        [polymorphic]: https://en.wikipedia.org/wiki/Polymorphism_(computer_science)
        [composite types]: https://en.wikipedia.org/wiki/Composite_data_type
        MARKDOWN
    }
}
