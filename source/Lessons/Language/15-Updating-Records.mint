module Lessons {
  const LANGUAGE_UPDATING_RECORDS =
    {
      files:
        [
          {
            path: "Main.mint",
            solution:
              <<~MINT
              type User {
                email : String,
                name : String,
                age : Number,
                id : Number
              }

              component Main {
                fun render : Html {
                  let user =
                    {
                      email: "john@doe.com",
                      name: "John Doe",
                      age: 32,
                      id: 1
                    }

                  let updatedUser =
                    { user | name: "Jane Doe", email: "jane@doe.com" }

                  <div>
                    "Hello \#{updatedUser.name} at \#{updatedUser.email}!"
                  </div>
                }
              }
              MINT,
            contents:
              <<~MINT
              type User {
                email : String,
                name : String,
                age : Number,
                id : Number
              }

              component Main {
                fun render : Html {
                  let user =
                    {
                      email: "john@doe.com",
                      name: "John Doe",
                      age: 32,
                      id: 1
                    }

                  let updatedUser =
                    { user | name: "Jane Doe"}

                  <div>
                    "Hello \#{updatedUser.name} at \#{updatedUser.email}!"
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Since values are immutable in Mint, you cannot modify a record directly,
        but only create a new record with the modified fields.

        To achieve that, you can use the record update syntax:

        ```mint
        { user | name: "Jane Doe" }
        ```

        It copies all the not specified fields of the base record and sets
        the specified fields.

        You can update more than one field at a time:

        ```mint
        { user | name: "Jane Doe", email: "jane@doe.com" }
        ```

        As an exercise, also update the `email` field of the record!
        MARKDOWN
    }
}
