module References {
  const STYLING_INTRODUCTION =
    <<#MARKDOWN(highlight)
    # Styling

    CSS is used to style HTML elements with some differences, they are more
    dynamic. We support nested selectors, [control flow] (with [if expressions]
    and [case expressions]), [interpolation] and [arguments] (like in a
    function).

    [case expressions]: /reference/control-flow/case
    [if expressions]: /reference/control-flow/if

    [interpolation]: /reference/styling/interpolation
    [control flow]: /reference/styling/control-flow
    [arguments]: /reference/styling/arguments

    Styles are bound to components and can't exist anywhere else. This limits
    their scope to the component itself and makes them more manageable. Styles
    are defined using a **style block** with a named identifier (alphanumeric
    characters and dash `-`):

    ```mint
    component Test {
      style root {
        font-family: sans;
        font-weight: bold;
        color: red;
      }

      fun render : Html {
        <div::root>
          Hello
        </div>
      }
    }
    ```

    As you can see in the example, styles are applied to an element using the
    double colon syntax `::root` after the tag name. We use this instead of
    the `class` attribute to support the traditional way of styling as well.

    With this syntax, you can apply multiple styles to an element:

    ```mint
    component Main {
      style style-a {
        color: red;
      }

      style style-b {
        background: blue;
      }

      fun render : Html {
        <div::style-a::style-b/>
      }
    }
    ```
    MARKDOWN
}
