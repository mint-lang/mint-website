component Message {
  connect Application exposing { isMobile }

  // The subtitle to display.
  property subtitle : Html = <></>

  // The actions to display.
  property actions : Html = <></>

  // The title to display.
  property title : Html = <></>

  // The styles for the base element.
  style base {
    justify-content: center;
    flex-direction: column;
    align-items: center;
    display: flex;
    flex: 1;

    padding: 20px;
  }

  // The styles for the title.
  style title {
    font-family: Forum;
    text-align: center;
    font-weight: bold;
    font-size: 4em;

    margin-top: 0.25em;
  }

  // The styles for the subtitle.
  style subtitle {
    margin-bottom: 1em;
    margin-top: 0.5em;

    text-align: center;
    font-size: 1.5em;

    if isMobile {
      font-size: 1.25em;
    }
  }

  // The styles for the actions.
  style actions {
    font-size: 1.25em;
  }

  // Renders the component.
  fun render : Html {
    <div::base>
      if Html.isNotEmpty(title) {
        <div::title>title</div>
      }

      if Html.isNotEmpty(subtitle) {
        <div::subtitle>subtitle</div>
      }

      if Html.isNotEmpty(actions) {
        <div::actions>actions</div>
      }
    </div>
  }
}
