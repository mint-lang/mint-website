module Lessons {
  const HTML_EXPRESSIONS =
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
                  let greeting =
                    "Hello World!"

                  <div>
                    greeting
                    <br/>
                    "String"
                    <br/>
                    ["Item1", "Item2"]
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        At some point you will want to display some data in your HTML, and the
        main way to do it by just putting them there!

        You are allowed to put any expression as a child of any HTML tag:

        ```mint
        <div>
          expression1
          expression2
          "String"
          ["Item1", "Item2"]
        </div>
        ```

        The only rule is that the expression must resolve to one of the
        following types:

        ```mint
        Html
        String
        Array(Html)
        Array(String)
        ```

        You can use a block to gather expressions together without displaying
        them:

        ```mint
        <div>
          {
            let name = "Joe!"

            "Hello \#{name}!"
          }
        </div>
        ```
        MARKDOWN
    }
}
