module References {
  const COMPONENTS_CONTEXT =
    <<#MARKDOWN(highlight)
    # Context

    Context is a way to pass data through the component tree without having to
    pass it through every component in-between via props. In a nutshell, it
    allows components anywhere in the hierarchy to subscribe to a value from
    higher up the component tree.

    It's not uncommon to run into situations in which a value from a
    grandparent component (or higher) needs to be passed down to a child, often
    without the intermediate component needing it. This process of passing down
    props is often referred to as "prop drilling" and can be cumbersome,
    error-prone, and just plain repetitive, especially as the application grows
    and more values have to be passed through more layers. This is one of the
    key issues context aims to address by providing a way for a child to
    subscribe to a value higher up in the component tree, accessing the value
    without it being passed down as a prop.

    Here is a complete example:

    ```mint
    type Theme {
      setMode : Function(String, Promise(Void)),
      mode : String,
    } context {
      setMode: (value : String) { Promise.resolve(void) },
      mode: ""
    }

    component Button {
      context theme : Theme

      style root {
        border-radius: 3px;
        padding: 10px;
        border: 0;

        case theme.mode {
          "light" =>
            background: #EEE;
            color: #333;
          =>
            background: #333;
            color: #FFF;
        }
      }

      fun handleClick {
        theme.setMode(
          if theme.mode == "light" {
            "dark"
          } else {
            "light"
          })
      }

      fun render {
        <button::root onClick={handleClick}>
          "I'm a button! Click me to change the mode!"
        </button>
      }
    }

    component Main {
      state mode : String = "light"

      provide Theme {
        setMode: -> mode,
        mode: mode
      }

      fun render {
        <Button/>
      }
    }
    ```

    In Mint, a context is tied to a type (there can't be multiple contexts with
    the same type).

    All this is type safe and errors are reported if anything is not set up
    correctly.

    ## Requiring context

    A component can require a context using the `context` keyword:

    ```mint
    context theme : Theme
    ```

    This essentially will make a value from a parent component available to the
    child component.

    ## Providing context

    A component can provide context using the `provide` keyword:

    ```mint
    provide Theme {
      setMode: -> mode,
      mode: mode
    }
    ```

    The value is a record which has access to the scope of the component.

    MARKDOWN
}
