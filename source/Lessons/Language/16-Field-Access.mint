module Lessons {
  const LANGUAGE_FIELD_ACCESS =
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
                const USERS = [
                  { name: "John", age: 36 },
                  { name: "Doe", age: 24 }
                ]

                fun render : Html {
                  <pre>
                    USERS
                    |> Array.map(.name(User))
                    |> String.join("\n")
                  </pre>
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
                const USERS = [
                  { name: "John", age: 36 },
                  { name: "Doe", age: 24 }
                ]

                fun render : Html {
                  <pre>
                    USERS
                    |> Array.map((user : User) : String { user.name })
                    |> String.join("\n")
                  </pre>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        There is a syntax sugar for creating a field accessor (a function which
        returns one of the fields of a record), so instead of this:

        ```mint
        (user : User) : String { user.name }
        ```

        You can just write:

        ```mint
        .name(User)
        ```

        Which results in the same function. This is super helpful in piped calls
        since it's more readable and reduces cognitive load.

        ```mint
        users
        |> Array.map(.age(User))
        |> Array.map(Number.toString)
        |> String.join("\n")
        ```

        As an exercise, replace the anonymous function with a field accessor.
        MARKDOWN
    }
}
