module References {
  const CONTROL_FLOW_CASE =
    <<#MARKDOWN(highlight)
    # case

    The case expression allows us to say "if the data has this shape, then do
    that", which we call _pattern matching_.

    Here we match on a `Number` and return a specific string for the values `0`,
    `1`, and `2`. The final pattern `n` matches any other value that did not
    match any of the previous patterns.

    ```mint
    case some_number {
      0 => "Zero"
      1 => "One"
      2 => "Two"
      n => "Some other number" // This matches anything
    }
    ```

    A case is an expression, meaning it returns a value and can be used
    anywhere we would use a value. For example, we can name the value of a case
    expression with a let binding.

    ```mint
    let description =
      case true {
        true => "It's true!"
        false => "It's not true."
      }

    description  // => "It's true!"
    ```

    ## Custom Types

    When given a custom type record, we can pattern match on it to determine
    which record constructor matches, and to assign names to any contained
    values.

    ```mint
    type User {
      LoggedIn(String)
      Guest
    }

    case user {
      LoggedIn(name) => name
      Guest => "Guest user"
    }
    ```

    ## Destructuring

    A case expression can be used to destructure values that contain other
    values, such as tuples, arrays and custom types.

    ```mint
    case xs {
      [] => "This list is empty"
      [a] => "This list has 1 element"
      [a, b] => "This list has 2 elements"
      => "This list has more than 2 elements"
    }
    ```

    It's not just the top level data structure that can be pattern matched,
    contained values can also be matched. This gives case the ability to
    concisely express flow control that might be verbose without pattern
    matching.

    ```mint
    case xs {
      [[]] => "The only element is an empty list"
      [[], ...rest] => "The 1st element is an empty list"
      [[4], ...rest] => "The 1st element is a list of the number 4"
      => "Something else"
    }
    ```

    ### Let Destructuring

    Pattern matching also works in `let` bindings. Patterns that do not match
    all instances of that type needs to be handled with early returns.

    ```mint
    // a is 1 will not return
    let [a] = [1] or return 0

    // Will return 0 since the pattern has 1 element but the value has 2
    let [b] = [1, 2] or return 0
    ```

    ### Awaiting Promises

    You can use the `await` keyword before the subject to wait for a promise
    to resolve before doing the pattern matching:

    ```mint
    case await request {
      Ok(response) => "The request succeeded!"
      Err(response) => "The request failed!"
    }
    ```

    The return type of an expression like that will always be `Promise(a)`
    where `a` is the type of the branches.
    MARKDOWN
}
