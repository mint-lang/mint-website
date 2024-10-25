component PageHeader {
  // The subtitle to display.
  property subtitle : String

  // The title to display.
  property title : String

  // Styles for the root element.
  style root {
    line-height: 1;

    span {
      margin-bottom: 15px;
      margin-top: 7px;

      font-size: 18px;
      display: block;
      opacity: 0.85;
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
