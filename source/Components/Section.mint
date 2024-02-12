component Section {
  /* The contents of the right side. */
  property children : Array(Html) = []

  /* The snippet on the left side. */
  property snippet : Html = <></>

  /* The title of the section. */
  property title : String

  /* Styles of the root element. */
  style root {
    grid-template-columns: 1fr auto;
    align-items: center;
    grid-gap: 100px;
    display: grid;
  }

  /* Renders the component. */
  fun render : Html {
    <div::root>
      <Content>
        <h2 style="font-size: 38px;">
          title
        </h2>

        ContentInstrumenter.instrumentMany(children)
      </Content>

      snippet
    </div>
  }
}
