module References {
  const DEBUGGING =
    <<#MARKDOWN(highlight)
    # Debugging

    Mint offers some handy tools for debugging purposes.

    ## dbg

    The `dbg` keyword logs the given value to the console using a pretty
    printing algorithm. This will show Mint values similarly as to how
    they are written in source code.

    ```mint
    type User {
      name :  String,
      age : Number
    }

    dbg Maybe.Nothing // Maybe.Nothing
    dbg { name: "Joe", age: 37 } // User { name: "Joe", age: 37 }
    ```

    This will also print the location of the value you are printing in a
    separate line so it can be find easily.

    ```
    Main.mint:3:10
    User { name: "Joe", age: 37 }
    ```

    The location line will not be printed if source maps are enabled because
    the browsers developer tools will point to the proper location so it's not
    needed.

    ## dbg!

    The `dbg!` keyword is similar to the `dbg` but instead of pretty printed
    version it prints the raw value.

    ```mint
    dbg! Maybe.Just("Hello World")
    // Object { length: 1, _0: "Hello World" }
    ```

    ## Debug and Console modules

    The [Debug](/api/Debug) module offers two functions which helps debugging:

    - `Debug.inspect` - prints pretty printed version of the value.
    - `Debug.log` - prints the raw value.

    The [Console](/api/Console) module wraps native JavaScript console functions.

    ## Source Maps

    Source maps are mappings between Mint source and the generated JavaScript.
    It helps you find the source for generated code in the browsers developer
    tool.

    Source map generation can be enabled using the `--generate-source-maps`
    flag for the `build`, `start` and `test` commands.
    MARKDOWN
}
