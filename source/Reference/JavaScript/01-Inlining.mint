module References {
  const JAVASCRIPT_INLINING =
    <<#MARKDOWN(highlight)
    # Inlining JavaScript

    Since Mint itself compiles to JavaScript, including additional JavaScript
    is pretty straightforward. Simply wrap the JavaScript in backticks anywhere
    you would write an expression. Mint assumes that the type of the value
    returned by this expression matches whatever is needed by the surrounding
    Mint code (but see decoding for a way to safely convert it).

    > Inlining allows you to invoke arbitrary JavaScript code. This can cause
    unexpected runtime errors. You can bypass the Mint type system, storing
    invalid data in Mint variables and cause Mint itself to be the source of
    the runtime error. Use it with care!

    Here is an example inlining a call to the JavaScript function
    [window.alert](https://developer.mozilla.org/en-US/docs/Web/API/Window/alert).

    ```mint
    component Main {
      fun handleClick (event : Html.Event) : Void {
        `window.alert("Hello")`
      }

      fun render : Html {
        <div onClick={handleClick}>
          <{ "Click to alert!" }>
        </div>
      }
    }
    ```

    ## Inlined JavaScript Statements

    Since in Mint everything is an expression, the inlined JavaScript code must
    also be an expression. If you need to execute multiple JavaScript
    statements, wrap the code in a
    [Immediately Invoked Function Expression](https://developer.mozilla.org/en-US/docs/Glossary/IIFE).

    ```mint
    module Greeter {
      fun greet (name : String) : String {
        `
        (() => {
          const uppercaseName = \#{name}.toUpperCase()

          return "Hello " + uppercaseName + "!"
        })()
        `
      }
    }
    ```

    > You should expect your code to be used in a return statement.

    ## Interpolation in inlined JavaScript Statements

    In certain cases you might want access to the Mint scope (so to speak), you
    can do that by using the interpolation syntax `\#{...}` in inlined
    JavaScript. The code inside is evaluated in Mint in the current scope.

    ```mint
    module Greeter {
      get name : String {
        "Me"
      }

      fun greet : String {
        `
        (() => {
          return "Hello " + \#{name} + "!"
        })()
        `
      }
    }
    ```

    > Generated interpolation code uses argument names like `i` and `xyz`,
    which can cause issues with shadowing or order of operations. To be safe,
    prefix your JavaScript variable names with a dollar sign, like `$i`

    ## Specifying the type

    To help the type checker, the type of an inlined JavaScript statement can
    be defined with the `as` keyword:

    ```mint
    `"Hello World!"` as String
    ```
    MARKDOWN

}
