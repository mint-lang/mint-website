module References {
  const TYPES_CUSTOM_TYPES =
    <<#MARKDOWN(highlight)
    # Custom Types

    In Mint supports two kinds of custom types:

    - [Composite Type](https://en.wikipedia.org/wiki/Composite_data_type)
    - [Algebraic Data Type](https://en.wikipedia.org/wiki/Algebraic_data_type)

    ## Composite Type

    Composite types are called **records**, **structs**, or **objects** in
    various languages. A composite type is a collection of named fields, an
    instance of which can be treated as a single value.

    You can define a custom composite type like this:

    ```mint
    type User {
      email : String,
      name : String,
      id : Number
    }
    ```

    You can create an instance of this type (we will call them **records** from
    now own) like this:

    ```mint
    {
      email: "john@doe.com",
      name: "John Doe",
      id: 1
    }
    ```

    Records are **immutable**, so instead of mutating you can create a new
    record with updated fields like this:

    ```mint
    let user =
      {
        email: "john.doe@gmail.com",
        name: "John Doe",
        id: 0
      }

    let updatedUser =
      { user | name: "Stuart" }

    updatedUser == {
      email: "john.doe@gmail.com",
      name: "Stuart",
      id: 0
    }
    ```

    ## Algebraic Data Type

    They are used to describing data which contains **different types of
    values** (called variants).

    For example, a type for a logged in state can be written as two variants:

    ```mint
    type UserState {
      LoggedIn(User)
      Visitor
    }
    ```

    Since this is a type, it can be used in type signatures:

    ```mint
    fun isLoggedIn (userState : UserState) : Bool {
      case userState {
        LoggedIn(user) => true
        Visitor => false
      }
    }

    isLoggedIn(UserState.LoggedIn(user)) // true
    isLoggedIn(UserState.Visitor) // false
    ```

    As you can see from the code above, you can create instances of the type by
    using its name then a dot then its variant and then any arguments it takes
    `UserState.LoggedIn(user)`, you can also match the variants in a
    [case expression](/reference/control-flow/case).

    ### Type Variables

    You can define **type variables** for a type so it can become **generic**,
    meaning that a type of values of a variant can be any other type.

    The best example for this is the `Result(error, value)` type:

    ```mint
    type Result(error, value) {
      Err(error)
      Ok(value)
    }
    ```

    It can be used with any types for error and value:

    ```mint
    // A result where the error and value is both string
    Result(String, String)

    // An example result type for HTTP requests.
    Result(Http.ErrorResponse, Http.Response)
    ```

    ### Named Parameters

    A variants parameters can have names:

    ```mint
    type Content {
      Html(value : Html, code : Bool)
      Text(String)
    }

    Content.Html(value: <></>, code: true)
    ```

    The parameters can be destructured using their name (and thus can be in
    any order):

    ```mint
    case content {
      Html(code, value) => ""
      Text(value) => value
    }
    ```
    MARKDOWN
}
