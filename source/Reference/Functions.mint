async component Reference.Functions {
  fun render : Html {
    <<#MARKDOWN
    # Functions

    Functions are callable pieces of code which:

    - can take 0 or more parameters
    - can have 1 or more statements
    - can be defined in **components**, **modules**, **stores**, and
      **providers**

    A function is defined by the `fun` keyword followed by its **name**,
    **arguments** and **return type**:

    ```mint
    fun greet (name : String) : Html {
      <div>
        <{ "Hello " + name + "!" }>
      </div>
    }
    ```

    Things to keep in mind:

    - the name of the function must start with a lowercase letter and only
      contain letters and numbers

    - type annotations for the arguments are mandatory

    - the return type annotation is optional, if not provided the return type
      will be inferred from last statement

    - the parentheses for the arguments can be left off if the function does
      not take any arguments.

    ## Calling a function

    You call a function with its name, providing zero or more arguments
    separated by commas in parentheses.

    ```mint
    fun greet (name : String) : Html {
      <div>
        <{ "Hello " + name + "!" }>
      </div>
    }

    greet("Bob")
    ```

    If the function belongs to a **store** or a **module** you can call it
    like this:

    ```mint
    module Greeter {
      fun greet (name : String) : Html {
        <div>
          <{ "Hello " + name + "!" }>
        </div>
      }
    }

    Greeter.greet("Bob")
    ```

    ## Default arguments

    A function can specify default values for the last parameters:

    ```mint
    fun greet (name : String = "Joe") : Html {
      <div>
        <{ "Hello " + name + "!" }>
      </div>
    }

    greet("Bob") /* Hello Bob! */
    greet()      /* Hello Joe! */
    ```

    ## Calling with named arguments

    All arguments can also be specified, in addition to their position, by
    their name. For example:

    ```mint
    fun greet (name : String, suffix : String = "!") : Html {
      <div>
        <{ "Hello " + name + suffix }>
      </div>
    }

    greet(name: "Bob") /* Hello Bob? */
    ```

    When there are many arguments, the order of the names in the invocation
    doesn't matter, as long as all required parameters are covered:

    ```mint
    greet(suffix: "?", name: "Bob")
    ```

    > #{TablerIcons.ALERT_CIRCLE} Normal arguments and named arguments cannot
    be used together.

    ## Functions as arguments

    You can define a function which takes a function as an argument. The type
    of this argument must be defined and must match the type of the actual
    function passed at runtime. The function can be an **anonymous** or
    **named** function.

    ```mint
    fun greet (name : String) : Html {
      <div>
        <{ "Hello " + name + "!" }>
      </div>
    }

    fun showGreeting (name : String, greeter : Function(String, Html)) : Html {
      greeter(name)
    }

    showGreeting("Bob", Greeter.greet)
    ```

    Here we passed the `Greeter.greet` function as an argument.

    ## Type of a function

    Functions have a specific type signature, like everything else in Mint.
    The type for the function includes the types of its arguments (in
    parentheses) and the return value (as last) in list.

    For a function like:

    ```mint
    fun greet (name : String) : Html {
      <div>
        <{ "Hello " + name + "!" }>
      </div>
    }
    ```

    The type is:

    ```mint
    Function(String, Html)
    ```

    This can be read as:

    > A function which takes a `String` and returns `Html`

    ## Anonymous functions

    Anonymous functions look like this:

    ```mint
    (suffix : String, match : Regex.Match) : String { match.match + suffix }
    (event : Number) : Void { handleClick(event) }
    () : Void { 42 }
    ```

    The anonymous function starts with one or more argument definitions
    enclosed by parentheses followed by the type definition after a colon
    (`:`), then expressions enclosed by brackets.

    This can be used as an expression anywhere you would use a value:

    ```mint
    fun render : Html {
      <div onClick={(event : Html.Event) : String { Debug.log("Hello") }}>
        "Click Me!"
      </div>
    }
    ```

    ## Recursive Functions

    All functions can be called recursively:

    ```mint
    fun fibonacci(num : Number) : Number {
      if num <= 1 {
        1
      } else {
        fibonacci(num - 1) + fibonacci(num - 2)
      }
    }

    <{ fibonacci(10) }>
    ```

    > #{TablerIcons.ALERT_CIRCLE} Be careful when using recursive
    functions, the type-checker does not check if there is an exit condition,
    if there is not, it will cause an infinite loop at runtime.

    ## Pipe operator

    The pipe operator (`|>`) can be used to pipe an expression into a
    function as the **first parameter**:

    ```mint
    " Joe "
    |> String.toUppercase
    |> String.trim
    |> String.indent(2)

    /* Is the same as */
    String.indent(String.trim(String.toUppercase(" Joe ")), 2)
    ```

    Using this operator makes the code more readable.

    MARKDOWN
  }
}
