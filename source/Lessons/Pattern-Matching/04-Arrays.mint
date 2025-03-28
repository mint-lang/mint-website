module Lessons {
  const PATTERN_MATCHING_ARRAY =
    {
      files:
        [
          {
            path: "Main.mint",
            solution:
              <<~MINT
              component Main {
                fun render : String {
                  let array =
                    []

                  case array {
                    [] => "1"              /* Empty array  */
                    ["Joe"] => "2"         /* Array with only one specific element */
                    [a] => "3"             /* Array with only one element */
                    [a, b] => "4"          /* Array with only two elements */
                    [head, ...tail] => "5" /* Array at one element (tail can be empty) */
                  }
                }
              }
              MINT,
            contents:
              <<~MINT
              component Main {
                fun render : String {
                  let array =
                    ["Joe"]

                  case array {
                    [] => "1"              /* Empty array  */
                    ["Joe"] => "2"         /* Array with only one specific element */
                    [a] => "3"             /* Array with only one element */
                    [a, b] => "4"          /* Array with only two elements */
                    [head, ...tail] => "5" /* Array at one element (tail can be empty) */
                  }
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        You can pattern match on the structure of an `Array`, basically
        assigning variables to its items based on its content.

        In the example on the right, you can see how the items can be matched
        and destructured.

        You can play around with the array and see if you can make it match
        each of the branches - the solution will give you one, and you might
        need to remove some branches to make others work!
        MARKDOWN
    }
}
