/* A component to render SVG icons. */
component Icon {
  /* The click event handler. */
  property onClick : Function(Html.Event, Promise(Void)) = Promise.never1

  /* Whether or not the icon is disabled. */
  property disabled : Bool = false

  /* The actual SVG icon. */
  property icon : Html = <></>

  /* The styles for the icon. */
  style base {
    justify-content: center;
    display: inline-flex;
    align-items: center;

    if disabled {
      cursor: not-allowed;
    } else {
      cursor: pointer;
    }

    &:hover {
      if !disabled {
        color: seagreen;
      }
    }

    svg {
      fill: currentColor;
      height: 24px;
      width: 24px;

      if disabled {
        opacity: 0.5;
      } else {
        opacity: 1;
      }
    }
  }

  fun render : Html {
    <div::base
      tabindex="0"
      onClick={
        (event : Html.Event) {
          if !disabled {
            onClick(event)
          }
        }
      }>

      icon

    </div>
  }
}
