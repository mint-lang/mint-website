module Lessons {
  const CONTROL_EXPRESSIONS_FOR =
    {
      files:
        [
          {
            path: "Main.mint",
            solution:
              <<~MINT
              component Main {
                fun render : Html {
                  let cats =
                    [
                      {"Henri The Existential Cat", "OUtn3pvWmpg"},
                      {"Keyboard Cat", "J---aiyznGQ"},
                      {"Maru", "z_AbfPXTKms"},
                    ]

                  <div>
                    <h1>"The Famous Cats of YouTube"</h1>

                    <ul>
                      for cat of cats {
                        <li>
                          <a
                            href="https://www.youtube.com/watch?v=\#{cat[1]}"
                            target="_blank">
                            <{cat[0]}>
                          </a>
                        </li>
                      }
                    </ul>
                  </div>
                }
              }
              MINT,
            contents:
              <<~MINT
              component Main {
                fun render : Html {
                  let cats =
                    [
                      {"Henri The Existential Cat", "OUtn3pvWmpg"},
                      {"Keyboard Cat", "J---aiyznGQ"},
                      {"Maru", "z_AbfPXTKms"},
                    ]

                  <div>
                    <h1>"The Famous Cats of YouTube"</h1>

                    <ul>
                      /*
                      Put this in a for expression.

                      <li>
                        <a
                          href="https://www.youtube.com/watch?v=\#{cat[1]}"
                          target="_blank">
                          <{cat[0]}>
                        </a>
                      </li>
                      */
                    </ul>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        As most other languages, Mint has a construct to iterate over certain
        data structures.

        It's the `for` block, and it looks like this:

        ```mint
        for item of iterable {
          expressions
        }
        ```

        Unlike in some languages, `for` in Mint is an expression and not a
        statement, and because of this it returns an `Array(item)` where
        `item` is the type of the last `expression`.

        Currently, it can iterate through these types: `Array(item)`, `Set(item)`,
        and `Map(key,value)`.

        ### Filtering

        The `for` block can filter an array based on some condition specified
        in a `when` block:

        ```mint
        // This returns [0,2,4]
        for number of [0,1,2,3,4] {
          number
        } when {
          (number % 2) == 0
        }
        ```

        Let's display the links of the cat videos using a `for` expression.
        MARKDOWN
    }
}
