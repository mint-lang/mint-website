module Lessons {
  const COMPONENTS_COMPUTED_PROPERTIES =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Multiplier {
                property number : Number
                property by : Number

                get result : Number {
                  number * by
                }

                fun render : Html {
                  <div>
                    Number.toString(result)
                  </div>
                }
              }

              component Main {
                fun render : Html {
                  <div>
                    <Multiplier number={3} by={100}/>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        There are some instances where you want to move a bigger piece of code
        into a function, but it doesn't depend on any arguments. For this, you
        can use a computed property.

        ```mint
        get computation {
          // Do some computations here
        }
        ```

        Later on you can call it like any other variable.

        ```mint
        <div>
          "The result of the computation is: "
          computation
        </div>
        ```
        MARKDOWN
    }
}
