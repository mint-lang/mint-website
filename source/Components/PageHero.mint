component PageHero {
  connect Application exposing { isMobile }

  // The children to display.
  property children : Array(Html) = []

  // The title to display.
  property title : String

  // Styles for the root element.
  style root {
    margin-bottom: 30px;

    if isMobile {
      margin-bottom: 0;
    }

    h1 {
      font-weight: normal;
      font-family: Forum;
      text-align: center;
      font-size: 2.5em;

      margin-bottom: 20px;
      margin-top: 0;

      if isMobile {
        font-size: 2em;
      }
    }

    hr {
      width: 100%;

      margin: 0;
      margin-top: 40px;

      if isMobile {
        margin-top: 20px;
      }

      border: 0;
      border-bottom: 3px double var(--border-color);
    }

    p {
      text-align: center;
      font-size: 18px;

      if isMobile {
        font-size: 16px;
      }
    }
  }

  // Renders the component.
  fun render : Html {
    <div::root>
      <h1>title</h1>
      <Content><p>children</p></Content>
      <hr/>
    </div>
  }
}
