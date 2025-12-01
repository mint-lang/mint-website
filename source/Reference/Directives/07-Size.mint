module References {
  const DIRECTIVES_SIZE =
    <<#MARKDOWN(highlight)
    # Size Directive

    The `@size` directive returns the dimensions of the referenced entity as
    a `Maybe(Dom.Dimensions)`.

    ```mint
    component Main {
      style element {
        overflow: hidden;
        resize: both;

        height: 200px;
        width: 400px;

        justify-content: center;
        align-items: center;
        display: flex;

        if isSmall {
          background: red;
        } else {
          background: #CCC;
        }
      }

      get isSmall {
        if let Just(dimensions) = @size(element) {
          dimensions.width < 200
        } else {
          false
        }
      }

      fun render {
        <div>
          <div::element as element>
            <span>
              "Reize Me"

              if let Just(dimensions) = @size(element) {
                " \#{dimensions.width}x\#{dimensions.height}"
              }
            </span>
          </div>
        </div>
      }
    }
    ```
    MARKDOWN
}
