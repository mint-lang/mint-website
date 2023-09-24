component Body {
  /* The snippet to display. */
  property children : Array(Html) = []

  /* Styles for the root element. */
  style root {
    font-family: 'Noto Sans';
    background: whitesmoke;
    box-sizing: border-box;
    min-height: 100vh;
    padding: 5vh;
    color: #333;
    margin: 0;
  }

  /* Styles for the wrapper element. */
  style wrapper {
    max-width: 1280px;
    margin: 0 auto;
  }

  /* Renders the component. */
  fun render : Html {
    <div::root>
      <div::wrapper>
        children
      </div>
    </div>
  }
}
