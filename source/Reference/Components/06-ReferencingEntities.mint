module References {
  const COMPONENTS_REFERENCING_ENTITIES =
    <<#MARKDOWN(highlight)
    ## Referencing Entities

    Sometimes it's necessary to access elements or components in a component
    for a number of reasons. To do that you can use the `as name` notation.

    The usual example is to focus an element after an event happens:

    ```mint
    component Main {
      fun handleClick : Promise(Void) {
        case input {
          Nothing => next { }
          Just(element) =>
            {
              await Dom.focusWhenVisible(element)
              next {}
            }
        }
      }

      fun render : Html {
        <div>
          <input as input/>

          <button onClick={handleClick}>
            "Focus the input!"
          </button>
        </div>
      }
    }
    ```

    As you can see the input variable will be a `Maybe(Dom.Element)` and this
    is because there is no guarantee that the element will be in the DOM at the
    time the function runs.

    You can also reference sub components the same way:

    ```mint
    component Item {
      state text : String = "Hello"

      fun update(text : String) : Promise(Void) {
        next { text: text }
      }

      fun render : Html {
        <div>
          text
        </div>
      }
    }

    component Main {
      fun handleClick : Promise(Void) {
        case item {
          Just(todoItem) => todoItem.update("Bello")
          Nothing => next {}
        }
      }

      fun render : Html {
        <div>
          <Item as item/>

          <button onClick={handleClick}>
            "Click me!"
          </button>
        </div>
      }
    }
    ```
    MARKDOWN

}
