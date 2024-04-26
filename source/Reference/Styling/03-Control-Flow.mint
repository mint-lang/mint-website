module References {
  const STYLING_CONTROL_FLOW =
    <<#MARKDOWN(highlight)
    # Control Flow

    Styles can contain [if expressions] and [case expressions], which allows
    changing the value of one or many CSS properties based on some condition.

    [case expressions]: /reference/control-flow/case
    [if expressions]: /reference/control-flow/if

    ```mint
    style root {
      // Apply these properties when the condition is true.
      if loading {
        pointer-events: none;
        opacity: 0.5;
      }

      // Apply properties depending on the subject.
      case status {
        Ok =>
          color: #333;

        Err =>
          border: 1px solid red;
          color: red;
      }
    }
    ```

    The body of the branches are one or many CSS Properties instead of normal
    expressions, sub selectors and at-rules cannot be nested in them and for
    if expressions the `else` branch is optional.
    MARKDOWN
}
