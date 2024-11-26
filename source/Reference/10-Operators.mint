module References {
  const OPERATORS =
    {
      let operators =
        [
          {
            "|>",
            0,
            ["a |> Function(a, b)"],
            ["b"],
            <>"Pipes the left side to the function on the right"</>
          },
          {
            "or",
            0,
            ["Maybe(a) or a", "Result(err, a) or a"],
            ["a", "a"],
            <<#MARKDOWN
            Falls back to the right side if left side is `Maybe.Nothing` or
            `Result.Err`
            MARKDOWN
          },
          {
            "&&",
            6,
            ["Bool && Bool"],
            ["Bool"],
            <>"Logical AND (short circuiting)"</>
          },
          {
            "||",
            5,
            ["Bool && Bool"],
            ["Bool"],
            <>"Logical OR (short circuiting)"</>
          },
          {"!=", 10, ["a != a"], ["Bool"], <>"Inequality"</>},
          {"==", 10, ["a == a"], ["Bool"], <>"Equality"</>},
          {
            "<=",
            11,
            ["Number <= Number"],
            ["Bool"],
            <>"Less than or equal to"</>
          },
          {
            ">=",
            11,
            ["Number >= Number"],
            ["Bool"],
            <>"More than or equal to"</>
          },
          {"<", 11, ["Number < Number"], ["Bool"], <>"Less than"</>},
          {">", 11, ["Number > Number"], ["Bool"], <>"More than"</>},
          {"-", 13, ["Number - Number"], ["Number"], <>"Substraction"</>},
          {
            "+",
            13,
            ["String + String", "Number + Number"],
            ["String", "Number"],
            <>"Addition and string concatenation"</>
          },
          {"*", 14, ["Number * Number"], ["Number"], <>"Multipication"</>},
          {"/", 14, ["Number / Number"], ["Number"], <>"Division (float)"</>},
          {"%", 14, ["Number % Number"], ["Number"], <>"Remainder (float)"</>},
          {"**", 15, ["Number ** Number"], ["Number"], <>"Exponentiation"</>},
          {"!", 16, ["!Bool"], ["Bool"], <>"Negation"</>}
        ]

      let table =
        <table>
          <thead>
            <tr>
              <th>"Operator"</th>
              <th>"Precedence"</th>
              <th>"Type Restriction"</th>
              <th style="white-space: nowrap">"Result Type"</th>
              <th>"Description"</th>
            </tr>
          </thead>

          <tbody>
            for item of operators {
              <tr>
                <td><code>item[0]</code></td>
                <td><code>"#{item[1]}"</code></td>

                <td>
                  Array.intersperse(
                    for example of item[2] {
                      <code style="white-space: nowrap;">example</code>
                    }, <br/>)
                </td>

                <td>
                  Array.intersperse(
                    for example of item[3] {
                      <code>example</code>
                    }, <br/>)
                </td>

                <td>item[4]</td>
              </tr>
            }
          </tbody>
        </table>

      <<#MARKDOWN(highlight)
      # Operators

      Mint supports a number of fixed operators. Some work on specific types,
      some on all types, see the table below for specifics:

      #{table}

      ## Controlling Precedence

      If you want to explicitly control the precedence you can wrap the
      operation in parentheses `(...)` or brackets `{...}` (which are basically
      just [blocks](/reference/blocks)).

      ```mint
      (10 * 4) + 2
      {10 * 4} + 2
      ```
      MARKDOWN
    }
}
