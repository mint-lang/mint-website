component Icon {
  // Whether or not the icon is disabled.
  property disabled : Bool = false

  // The actual SVG icon.
  property icon : Html = <></>

  // The size of the icon.
  property size : Number = 24

  // The URL of the target page.
  property href = ""

  // The styles for the root element. */
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
        color: var(--color-mintgreen);
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

  // Renders the component.
  fun render : Html {
    <a::root href={href}>icon</a>
  }
}
