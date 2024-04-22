module Lessons {
  const LANGUAGE_OPERATORS =
    {
      let rows =
        for operator of [
          {<code>"|>"</code>, "0", "Pipe"},
          {<code>"or"</code>, "0", "Fallback"},
          {<code>"&&"</code>, "6", "Logical AND"},
          {<code>"||"</code>, "5", "Logical OR"},
          {<code>"!="</code>, "10", "Inequality"},
          {<code>"=="</code>, "10", "Equality"},
          {<code>"<="</code>, "11", "Less than or equal to"},
          {<code>"<"</code>, "11", "Less than"},
          {<code>">="</code>, "11", "More than"},
          {<code>">"</code>, "11", "More than or equal to"},
          {<code>"-"</code>, "13", "Subtraction"},
          {<code>"+"</code>, "13", "Addition and string concatenation"},
          {<code>"*"</code>, "14", "Multiplication"},
          {<code>"/"</code>, "14", "Division"},
          {<code>"%"</code>, "14", "Remainder"},
          {<code>"**"</code>, "15", "Exponentiation"},
          {<code>"!"</code>, "16", "Negation"}
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
