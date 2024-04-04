module Lessons {
  const JAVASCRIPT_DECODE =
    {
      files:
        [
          {
            path: "Main.mint",
            solution:
              <<~MINT
              type User {
                name : String,
                age : Number
              }

              component Main {
                const JSON =
                  <<~JSON
                  {
                    "name": "John Doe",
                    "aged": 37
                  }
                  JSON

                fun render : Html {
                  let Ok(object) =
                    Json.parse(JSON) or return <{ "Cannot parse JSON!" }>

                  let Ok(user) =
                    decode object as User or return <{ "Cannot decode object!" }>

                  <div>
                    "\#{user.name} - age: \#{user.age}"
                  </div>
                }
              }
              MINT,
            contents:
              <<~MINT
              type User {
                name : String,
                age : Number
              }

              component Main {
                const JSON =
                  <<~JSON
                  {
                    "name": "John Doe",
                    "age": 37
                  }
                  JSON

                fun render : Html {
                  let Ok(object) =
                    Json.parse(JSON) or return <{ "Cannot parse JSON!" }>

                  let Ok(user) =
                    decode object as User or return <{ "Cannot decode object!" }>

                  <div>
                    "\#{user.name} - age: \#{user.age}"
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Mint would not be useful if we could not get data outside of the
        program and we need to make sure that the data we get conforms to
        the defined types.

        One of the ways we can do that is the `decode` expression. It takes a
        raw JavaScript object and a type and checks the object against the type.
        If it matches it will return the typed object and if it's not it will
        return an error.

        The return type of the expression is `Result(Object.Error, a)` where
        `a` is the type.

        In the example on the right we use the [let destructuring with early
        return](/reference/blocks#early-return) to match the results.

        As an exersice try to change the JSON or the parsed object to be
        invalid.
        MARKDOWN
    }
}
