component Section {
  /* The contents of the right side. */
  property children : Array(Html) = []

  /* The snippet on the left side. */
  property snippet : Html = <></>

  /* The title of the section. */
  property title : String

  property flipped : Bool = false

  /* Styles of the root element. */
  style root {
    grid-template-columns: 1fr auto;
    align-items: center;
    grid-gap: 100px;
    display: grid;

    if flipped {
      grid-template-columns: auto 1fr;
    }

    > *:first-child {
      if flipped {
        border-right: 1px solid #EEE;
      }
    }
  }

  /* Renders the component. */
  fun render : Html {
    let content =
      <Content>
        <h2 style="font-size: 38px;">
          title
        </h2>

        ContentInstrumenter.instrumentMany(children)
      </Content>

    <div::root>
      if flipped {
        <>
          snippet
          content
        </>
      } else {
        <>
          content
          snippet
        </>
      }
    </div>
  }
}
