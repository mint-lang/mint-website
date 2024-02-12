module References {
  const DECODE =
    <<#MARKDOWN(highlight)
    # Decode Expression

    In order to process data from JavaScript, you must convert them to a Mint
    values. The `decode` expression helps you to do just that.

    ```mint
    decode object as String
    ```

    It try to convert the untyped value (`Object`) to a typed value. It returns
    a `Result(Object.Error, value)` with the result.

    You can decode JavaScript values into Mint **primitive values**, (`String`,
    `Bool`, `Number`, `Time`) **simple structures** (`Maybe(a)`, `Set(a)`,
    `Map(a,b)`, `Array(a)`) and [**composite types**](/reference/custom-types#composite_type)
    which only have the previously mentioned values.

    > If you try to decode a type which is not supported or try to decode
    something that is not an `Object`, you will get a nice error message.

    An example of decoding a composite type:

    ```mint
    type User {
      name : String,
      age : Number
    }

    component Main {
      fun render : Html {
        let jsonString =
          "{\"name\": \"John\", \"age\": 30 }"

        case Json.parse(jsonString) {
          Err => "Could not parse the JSON string!"
          Ok(object) =>
            case decode object as User {
              Err => "Can't decode User"
              Ok(user) => user.name
            }
        }
      }
    }
    ```

    ## Decoding not supported keys

    There are times when we want to decode an object containing a key whose
    name is not a valid key, for example `tag_list`. In this case the `using`
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
    |> ContentInstrumenter.instrument
}
