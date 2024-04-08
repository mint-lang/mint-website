module References {
  const MODULES =
    <<#MARKDOWN(highlight)
    # Modules

    In Mint modules are kind of containers for a set of relatable functions and
    constants. They are usually used to gather functions that relate to a
    specific type (like `String` or `Number`).

    ```mint
    module Greeter {
      fun greet (name : String) : String {
        "Hello \#{name}!"
      }
    }
    ```

    You can call the functions of a module by using the modules name:

    ```mint
    Greeter.greet("Joe") /* "Hello Joe" */
    ```

    You can omit the name of the module if you are calling a function from
    inside the same module:

    ```mint
    module Greeter {
      fun greet (name : String) : String {
        "Hello \#{name}!"
      }

      fun greetUpperCase (name : String) : String {
        greet(String.toUpperCase(name))
      }
    }
    ```

    MARKDOWN
}
