component PageHeader {
  connect Application exposing { isMobile }

  // The subtitle to display.
  property subtitle : String

  // The title to display.
  property title : String

  // Styles for the root element.
  style root {
    line-height: 1.25;

    span {
      margin-bottom: 15px;
      margin-top: 7px;

      font-family: Noto Sans;
      font-size: 18px;
      display: block;
      opacity: 0.85;

      if isMobile {
        line-height: 1.25;
        font-size: 14px;
      }
    }
  }

  // Renders the component.
  fun render : Html {
    <h1::root>
      title
      <span>subtitle</span>
    </h1>
  }
}
