module Lessons {
  const LANGUAGE_BLOCKS =
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
                  // This is a block
                  {
                    let name =
                      "Joe"

                    <div>"Hello \#{name}!"</div>
                  }
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        In some of the previous chapters, there were `let` statements (which we
        cover later on). These statements appear in **blocks**.

        A **block** is just a number of statements enclosed by brackets `{...}`
        used in many places (function body, branches of `if` expressions, etc...),
        but they can be used as a **standalone expression** as well:

        ```mint
        {
          let name = "Joe"

          // More statements...
        }
        ```

        Statements in a block are evaluated sequentially from top to bottom and
        the value from the last statement is returned.
        MARKDOWN
    }
}
