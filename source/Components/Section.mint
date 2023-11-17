component Section {
  /* The contents of the right side. */
  property children : Array(Html) = []

  /* The snippet on the left side. */
  property snippet : Html = <></>

  /* The title of the section. */
  property title : String

  /* Styles of the root element. */
  style root {
    grid-template-columns: auto 1fr;
    align-items: center;
    grid-gap: 100px;
    display: grid;

    > h2 {
      margin-top: 50px;
    }
  }

  /* Renders the component. */
  fun render : Html {
    <div::root>
      snippet

      <Content>
        <h2>
          title
        </h2>

        children
      </Content>
    </div>
  }
}
