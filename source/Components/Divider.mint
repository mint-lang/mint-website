component Divider {
  connect Application exposing { isMobile }

  // Styles for the root element.
  style root {
    border-top: 3px double var(--border-color);

    if isMobile {
      margin: 20px 0;
    } else {
      margin: 50px 0;
    }
  }

  // Renders the component.
  fun render : Html {
    <div::root/>
  }
}
