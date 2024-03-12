module References {
  const COMPONENTS_PROPERTIES =
    <<#MARKDOWN(highlight)
    # Properties

    Properties can be defined for components with the `property` keyword:

    ```mint
    component Test {
      property size : String = "small"
      property color : String = "red"

      fun render : Html {
        <div>
          <{ color }>
          <{ size }>
        </div>
      }
    }

    component Main {
      fun render : Html {
        <div>
          // Default property values
          <Test/>

          // Passed property values
          <Test size="medium" color="blue"/>
        </div>
      }
    }
    ```

    The name of the property must start with a lowercase letter and can only
    contain letters and numbers and they are referenced by name within the
    component.

    > Properties must be fully defined (meaning types in it cannot have any
      type variables).

    ## Required properties

    A property can be **required** by leaving out the default value:

    ```mint
    component User {
      property name : String

      fun render {
        <div>
          "User: \#{name}"
        </div>
      }
    }

    component Main {
      fun render : Html {
        <div>
          // Displays a compiler error
          <User/>

          <User name="Joe"/>
        </div>
      }
    }
    ```

    This means when using this component, this property must be set, if it's not
    then the type checker will show you an error.

    ## Optional type

    The **type annotation** can be left out if a default value is set:

    ```mint
    component User {
      property name = "Joe"

      fun render {
        <div>
          "User: \#{name}"
        </div>
      }
    }
    ```

    ## Passing properties

    Property values are passed to the component when it is rendered:

    ```mint
    component Main {
      fun render : Html {
        <Test color="blue" size="big"/>
      }
    }
    ```

    > All properties are type checked. Attempting to set an incompatible value
      will show an error.

    There are some examples of passing different things:

    ```mint
    component Main {
      fun render : Html {
        <Test
          items=[item1, item2]
          color={variable}
          size="10px"/>
      }
    }
    ```

    ## Children

    The `children` property is special and for now it can only have the type
    `Array(Html)`. It is used to access the children which are passed to the
    component:

    ```mint
    component Container {
      property children : Array(Html) = []

      fun render {
        <div>
          <{ children }>
        </div>
      }
    }

    component Main {
      fun render {
        <Container>
          "I am a child node!"
        </Container>
      }
    }
    ```

    > Currently the property must be defined, but in a future release it will
      be optional.
    MARKDOWN

}
