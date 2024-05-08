module References {
  const COMPONENTS_LIFECYCLE_FUNCTIONS =
    <<#MARKDOWN(highlight)
    # Lifecycle Functions

    Components have the following lifecycle functions:

    - **componentDidMount** - called when the component is mounted
    - **componentDidUpdate** - called when the component is updated
    - **componentWillUnmount** - called when the component is about to be unmounted

    Here are examples for each:

    ```mint
    component Test {
      fun componentDidMount : Promise(Void) {
        Debug.log("MOUNTED")
      }

      fun componentDidUpdate : Promise(Void) {
        Debug.log("UPDATED")
      }

      fun componentWillUnmount : Promise(Void) {
        Debug.log("WILL UNMOUNT")
      }

      fun render : Html {
        <div>
          "Hello!"
        </div>
      }
    }
    ```
    MARKDOWN
}
