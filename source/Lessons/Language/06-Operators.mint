module Lessons {
  const LANGUAGE_OPERATORS =
    {
      let rows =
        for operator of [
          #("|>", "0", "Pipe"),
          #("or", "0", "Fallback"),
          #("&&", "6", "Logical AND"),
          #("||", "5", "Logical OR"),
          #("!=", "10", "Inequality"),
          #("==", "10", "Equality"),
          #("<=", "11", "Less than or equal to"),
          #("<", "11", "Less than"),
          #(">=", "11", "More than"),
          #(">", "11", "More than or equal to"),
          #("-", "13", "Subtraction"),
          #("+", "13", "Addition and string concatenation"),
          #("*", "14", "Multiplication"),
          #("/", "14", "Division"),
          #("%", "14", "Remainder"),
          #("**", "15", "Exponentiation"),
          #("!", "16", "Negation")
        ] {
          <tr>
            <td>
              operator[0]
            </td>

            <td>
              operator[1]
            </td>

            <td>
              operator[2]
            </td>
          </tr>
        }

      let table =
        <table>
          <thead>
            <tr>
              <th>"Operator"</th>
              <th>"Precedence"</th>
              <th>"Description"</th>
            </tr>
          </thead>

          <tbody>
            rows
          </tbody>
        </table>

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
                      "Hello " + "World!" <br/>
                      Number.toString(0 + 10) <br/>
                      Bool.toString(true || false) <br/>
                      Bool.toString(true && false) <br/>
                      Bool.toString(0 != 1) <br/>
                      Bool.toString(1 != 0)
                    </div>
                  }
                }
                MINT
            }
          ],
        contents:
          <<#MARKDOWN
          Mint supports the following operators:

          #{table}

          To learn more about them (what types they support, etc...) check out
          the [operators] reference.

          [operators]: /reference/operators
          MARKDOWN
      }
    }
}
