module Lessons {
  const PATTERN_MATCHING_CASE =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                fun greet (value : Maybe(Tuple(String, Maybe(String)))) : String {
                  case value {
                    Just({name, Just(greeting)}) => "\#{greeting} \#{name}!"
                    Just({name, Nothing}) => "Hello \#{name}!"
                    =>"Hello World!"
                  }
                }

                fun render : Html {
                  <div>
                    <div>greet(Maybe.Just({"Joe", Maybe.Just("Howdy")}))</div>
                    <div>greet(Maybe.Just({"Joe", Maybe.Nothing}))</div>
                    <div>greet(Maybe.Nothing)</div>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        In the previous lesson we matched on simple values, which could have
        been written as a bunch of **ifs** and **elses**, however in the real
        world we have complex data structures and getting value out of those
        can be hard.

        This is where **pattern matching** comes in. It's a neat way of getting
        data out of a complex structure.

        A **pattern** looks like another value but instead only having values,
        it can have variables which will be assigned the corresponding value:

        ```mint
        // We have this value with a nested `String` value
        Maybe.Just("Hello")

        // This is a pattern that can match that structure
        Maybe.Just(value)
        ```

        If we **destructure** that **pattern** against the data, the `value`
        variable will be assigned the `"Hello"` value.

        We can do this in multiple ways, one of which is the same `case`
        statement we had before. In the example, there are three **branches**.
        The value of the first branch matching the pattern is returned.

        If a branch doesn't have a pattern (or value), like the last branch
        in the example, it covers all other possibilities.
        MARKDOWN
    }
}
