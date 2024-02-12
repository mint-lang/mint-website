component LabelledIcon {
  /* The click event handler. */
  property onClick : Function(Html.Event, Promise(Void)) = Promise.never1

  /* Whether or not the icon is disabled. */
  property disabled : Bool = false

  /* The actual SVG icon. */
  property icon : Html = <></>

  property label : Html = <></>

  style root {
    --tabler-stroke-width: 1.5;
    grid-template-columns: 1fr auto;
    grid-gap: 0.5em;
    display: grid;

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

    if disabled {
      cursor: initial;
    } else {
      cursor: pointer;
    }

    svg {
      fill: currentColor;
      height: 24px;
      width: 24px;
    }
  }

  style label {
    font-weight: bold;
  }

  fun render : Html {
    <div::root
      onClick={onClick}
      tabindex="0">

      <span::label>
        label
      </span>

      icon

    </div>
  }
}

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

      <{ icon }>

    </div>
  }
}
