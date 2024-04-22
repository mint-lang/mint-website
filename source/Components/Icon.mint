/* A component to render SVG icons. */
component Icon {
  /* The click event handler. */
  property onClick : Function(Html.Event, Promise(Void)) = Promise.never1

  property href = ""

  /* Whether or not the icon is disabled. */
  property disabled : Bool = false

  /* The actual SVG icon. */
  property icon : Html = <></>

  property size : Number = 24

  /* The styles for the icon. */
  style root {
    justify-content: center;
    display: inline-flex;
    align-items: center;

    text-decoration: none;
    color: inherit;

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
      height: #{size}px;
      width: #{size}px;

      if disabled {
        opacity: 0.5;
      } else {
        opacity: 1;
      }
    }
  }

  fun render : Html {
    if String.isEmpty(href) {
      <div::root
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
    } else {
      <a::root href={href}>
        icon
      </a>
    }
  }
}
