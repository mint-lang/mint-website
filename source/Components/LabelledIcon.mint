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

    &:hover {
      if !disabled {
        color: seagreen;
      }
    }

    if disabled {
      cursor: not-allowed;
      opacity: 0.5;
    } else {
      cursor: pointer;
      opacity: 1;
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
