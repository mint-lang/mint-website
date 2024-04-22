module References {
  const COMPONENTS_INTRODUCTION =
    <<#MARKDOWN(highlight)
    # Components

    Components are the building blocks of any application. They define what and
    how to display on the screen, and they can be composed inside each other.

    ```mint
    component Greeter {
      property name : String

      style root {
        color: blue;
      }

      fun render : Html {
        <div::root>
          "Hello \#{name}!"
        </div>
      }
    }

    component Main {
      fun render : Html {
        <Greeter name="Joe"/>
      }
    }
    ```

    You can read more about the specific features of components on different
    pages:

    - [Properties](/reference/components/properties)
    - [Styling](/reference/styling/introduction)
    - [Connecting to Stores](/reference/components/connecting-to-stores)
    - [Using Providers](/reference/components/using-providers)
    - [Referencing Entities](/reference/components/referencing-entities)
    - [Lifecycle Functions](/reference/components/lifecycle-functions)
    - [Global Components](/reference/components/global-components)
    - [Async Components](/reference/components/async-components)

    MARKDOWN
}
