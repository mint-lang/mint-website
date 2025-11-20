component PageHeader {
  connect Application exposing { isMobile }

  // The published text.
  property publishedText : String = ""

  // The subtitle to display.
  property subtitle : String

  // The title to display.
  property title : String

  // Styles for the root element.
  style root {
    line-height: 1.25;

    span, small {
      font-family: Noto Sans;
      display: block;

      if isMobile {
        line-height: 1.25;
        font-size: 14px;
      }
    }

    small {
      margin-bottom: 15px;
      font-weight: 400;
      font-size: 14px;
      opacity: 0.65;
    }

    span {
      margin-bottom: 7px;
      font-size: 18px;
      opacity: 0.85;
    }
  }

  // Renders the component.
  fun render : Html {
    <h1::root>
      title
      <span>subtitle</span>

      if String.isNotBlank(publishedText) {
        <small>publishedText</small>
      }
    </h1>
  }
}
