module Lessons {
  const LANGUAGE_TYPES =
    {
      let content =
        <<#MARKDOWN(highlight)
        Mint is a strongly typed programming language, which means that you will
        encounter a lot of type definitions.

        Syntax wise, a type definition consists of an identifier starting with a
        capital letter, and followed by letters and numbers.

        A type gives a name to a value conforming to a specific data structure.

        ```mint
        "Hello World!" // The type of this value is `String`
        ```

        A type can have **type variables**. These variables make the type
        [polymorphic](https://en.wikipedia.org/wiki/Polymorphism_(computer_science)),
        which means that the type can be used with other types
        instead of the type variable.

        ```mint
        // This is a generic type where the "a" can be any other type.
        Maybe(a)

        // This represents just a `String` or nothing.
        Maybe(String)
        ```

        These kinds of types are called composite types because the data
        structure they describe are composed of multiple types.

        Types appear in Mint code in multiple places, usually preceded by a
        colon:

        ```mint
        property name : String
        ```
        MARKDOWN

      {
        nextLesson: "/language/literals",
        category: "Language",
        previousLesson: "/",
        title: "Types",
        files: [],
        contents:
          ContentInstrumenter.instrument(
            skipAnchors: true,
            html: content)
      }
    }
}
