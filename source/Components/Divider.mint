component Divider {
  /* Styles for the root element. */
  style root {
    border-top: 3px double #EEE;
    position: relative;
    margin: 50px 0;
  }

  /* Renders the component. */
  fun render : Html {
    <div::root/>
  }
}
