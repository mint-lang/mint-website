module Lessons {
  const LANGUAGE_RECORDS =
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

                  <div>
                    "Hello \#{user.name}!"
                  </div>
                }
              }
              MINT,
            contents:
              <<~MINT
              type User {
                email : String,
                name : String,
                id : Number
              }

              component Main {
                fun render : Html {
                  let user =
                    {
                      email: "john@doe.com",
                      name: "John Doe",
                      id: 1
                    }

                  <div>
                    "Hello \#{user.name}!"
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Records are data structures that have a fixed set of keys. You can
        define a record type with the `type` keyword:

        ```mint
        type User {
          email : String,
          name : String,
          id : Number
        }
        ```

        The easiest way to create an instance of a record is with a record
        literal:

        ```mint
        {
          email: "john@doe.com",
          name: "John Doe",
          id: 1
        }
        ```

        You can access a record's fields using the `.` notation:

        ```mint
        user.name == "John Doe"
        ```

        As an exercise, add an `age` field to the record!
        MARKDOWN
    }
}
