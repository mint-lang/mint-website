module References {
  const JAVASCRIPT_DECODE =
    <<#MARKDOWN(highlight)
    # Decode

    In order to process data from JavaScript, you must convert them to a Mint
    values. The `decode` expression helps you to do just that.

    ```mint
    decode object as String
    ```

    It tries to convert the untyped value (`Object`) to a typed value. It
    returns a `Result(Object.Error, value)` with the result.

    You can decode JavaScript values into Mint **primitive values**, (`String`,
    `Bool`, `Number`, `Time`) **simple structures** (`Maybe(a)`, `Set(a)`,
    `Map(a,b)`, `Array(a)`) and [custom types], which only have the
    previously mentioned values.

    [custom types]: /reference/types/custom-types

    > If you try to decode a type which is not supported or try to decode
    something that is not an `Object`, you will get a nice error message.

    An example of decoding a composite type:

    ```mint
    type User {
      name : String,
      age : Number
    }

    component Main {
      fun render : String {
        let jsonString =
          <<~JSON
          {
            "name": "John",
            "age": 30
          }
          JSON

        let Ok(object) =
          Json.parse(jsonString) or return "Could not parse the JSON string!"

        let Ok(user) =
          decode object as User or return "Can't decode User"

        user.name
      }
    }
    ```

    ## Algebraic Data Types

    ADTs can be decoded as well but they must be in a specific format:

    ```mint
    type User {
      LoggedIn(name : String, age : Number)
      Guest
    }

    User.LoggedIn(name: "Joe", age: 42)
    User.Guest
    ```

    Values of these should be in this format:

    ```plain
    {
      type: "User.LoggedIn",
      value: ["Joe", 42]
    }

    {
      type: "User.Guest"
    }
    ```

    The `type` field tells us which variant the value is and the `value` field
    contains the values in order they are defined in.

    ## Decoding not supported keys

    There are times when we want to decode an object containing a key whose
    name is not a valid key, for example, `tag_list`. In this case, the `using`
    keyword can be used to specify the mapping for the key.

    ```mint
    type Post {
      tagList: Array(String) using "tag_list"
    }
    ```

    When decoding an object as a `Post` it will look for the `tag_list` field
    instead of the `tagList` field in the object, so this JavaScript Object:

    ```
    {
      tag_list: ["a", "b"]
    }
    ```

    will decode into this record:

    ```mint
    {
      tagList: ["a", "b"]
    }
    ```
    MARKDOWN
}
