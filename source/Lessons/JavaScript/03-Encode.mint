module Lessons {
  const JAVASCRIPT_ENCODE =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              type User {
                name : String,
                age : Number
              }

              component Main {
                fun render : Html {
                  let object =
                    encode {
                      name: "John Doe",
                      aged: 37
                    }

                  let json =
                    Json.prettyStringify(value: object, spaces: 2)

                  <div>
                    <pre>
                      json
                    </pre>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        In the previous lesson we learned how to decode a JavaScript object and
        now we learn how to encode a typed Mint object into a JavaScript object.

        It is mostly used to generate a JSON string which we can send either
        with a request or through websockets.

        We can use the `encode` keyword for the purpose:

        ```mint
        encode { name: "Bob" } // Object
        encode someExpression() // Object
        encode variable // Object
        ```

        ------------------------------------------------------------------------

        For more information check out the [reference page].

        [reference page]: /reference/javascript/encode
        MARKDOWN
    }
}
