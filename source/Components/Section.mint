component Section {
  connect Application exposing { isMobile, isTablet }

  // Whether or not the section is flipped.
  property flipped : Bool = false

  // The contents of the right side.
  property children : Array(Html) = []

  // The snippet on the left side.
  property snippet : Html = <></>

  // The title of the section.
  property title : String

  // Styles of the root element.
  style root {
    grid-template-columns: 1fr auto;
    align-items: center;
    grid-gap: 100px;
    display: grid;

    if isMobile {
      grid-template-columns: 1fr;
      grid-gap: 30px;
    } else if flipped {
      grid-template-columns: auto 1fr;
    }

    if isTablet {
      grid-gap: 30px;
    }

    > *:first-child {
      if flipped && !isMobile {
        border-right: 1px solid var(--border-color);
        padding-right: 30px;
      }
    }
  }

  // Renders the component.
  fun render : Html {
    let content =
      <Content fontSize={18}>
        ContentInstrumenter.instrument(
          <h2>
            title
          </h2>)

        ContentInstrumenter.instrumentMany(children)
      </Content>

    <div::root>
      if flipped && !isMobile {
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
