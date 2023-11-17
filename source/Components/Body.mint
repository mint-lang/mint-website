component Body {
  connect Application exposing { page }

  /* The snippet to display. */
  property children : Array(Html) = []

  /* Styles for the root element. */
  style root {
    font-family: 'Noto Sans';
    background: whitesmoke;
    box-sizing: border-box;
    min-height: 100vh;
    padding: 3vh;
    color: #333;
    margin: 0;
  }

  /* Styles for the wrapper element. */
  style wrapper {
    min-height: 100vh;
    margin: 0 auto;

    justify-content: space-between;
    flex-direction: column;
    display: flex;

    case page {
      Page.Learn =>
      => max-width: 1280px;
    }
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
