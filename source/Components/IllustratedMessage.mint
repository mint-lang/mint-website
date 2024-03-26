component IllustratedMessage {
  /* The subtitle to display. */
  property subtitle : Html = <></>

  /* The actions to display. */
  property actions : Html = <></>

  /* The image to display. */
  property image : Html = <></>

  /* The title to display. */
  property title : Html = <></>

  /* The styles for the base element. */
  style base {
    justify-content: center;
    flex-direction: column;
    align-items: center;
    display: flex;
    flex: 1;

    padding: 4em 0;
  }

  /* The styles for the title. */
  style title {
    font-family: Forum;
    text-align: center;
    font-weight: bold;
    font-size: 2em;

    margin-top: 0.25em;
  }

  /* The styles for the subtitle. */
  style subtitle {
    margin-bottom: 2em;
    margin-top: 0.5em;

    text-align: center;
    font-size: 1.25em;
  }

  /* The styles for the image. */
  style image {
    display: grid;

    svg {
      width: 100px;
      height: 100px;
    }
  }

  /* The styles for the actions. */
  style actions {
    grid-auto-flow: column;
    display: grid;

    grid-auto-flow: column;
    grid-gap: 2em;
  }

  /* Renders the component. */
  fun render : Html {
    <div::base>
      if Html.isNotEmpty(image) {
        <div::image>
          <{ image }>
        </div>
      }

      if Html.isNotEmpty(title) {
        <div::title>
          <{ title }>
        </div>
      }

      if Html.isNotEmpty(subtitle) {
        <div::subtitle>
          <{ subtitle }>
        </div>
      }

      if Html.isNotEmpty(actions) {
        <div::actions>
          <{ actions }>
        </div>
      }
    </div>
  }
}
