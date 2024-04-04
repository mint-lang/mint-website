module Lessons {
  const CONTROL_FLOW_CASE =
    {
      files:
        [
          {
            path: "Main.mint",
            solution:
              <<~MINT
              component Main {
                state number : Number = 0

                fun handleChange (event : Html.Event) {
                  next { number: Number.fromString(Dom.getValue(event.target)) or 0 }
                }

                fun render : Html {
                  <div>
                    <input
                      value={Number.toString(number)}
                      onChange={handleChange}
                      type="number"/>

                    <p>
                      case number {
                        0 => "Zero"
                        1 => "One"
                        2 => "Two"
                        3 => "Three"
                        4 => "Four"
                        => "Some other number" // This matches anything
                      }
                    </p>
                  </div>
                }
              }
              MINT,
            contents:
              <<~MINT
              component Main {
                state number : Number = 0

                fun handleChange (event : Html.Event) {
                  next { number: Number.fromString(Dom.getValue(event.target)) or 0 }
                }

                fun render : Html {
                  <div>
                    <input
                      value={Number.toString(number)}
                      onChange={handleChange}
                      type="number"/>

                    <p>
                      case number {
                        0 => "Zero"
                        1 => "One"
                        2 => "Two"
                        => "Some other number" // This matches anything
                      }
                    </p>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        The `case` expression allows us to say "if the data has this shape
        then do that", which we call _pattern matching_.

        Here we match on a `Number` and return a specific string for the
        values `0`, `1`, and `2`. The final branch matches any other value
        that did not match any of the previous branches.

        ```mint
        case number {
          0 => "Zero"
          1 => "One"
          2 => "Two"
          => "Some other number" // This matches anything
        }
        ```

        The `case` expression is more powerful than this simple example shows
        and we will be covering it in other lessons.

        As an exercise, you can add the branches for `3` and `4`.
        MARKDOWN
    }
}
