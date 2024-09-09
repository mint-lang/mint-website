async component Pages.NotFound {
  connect Application exposing { isMobile }

  // Styles for the root element.
  style root {
    place-content: center;
    min-height: 40vh;
    display: grid;

    if isMobile {
      min-height: 70vh;
    }
  }

  // Renders the component.
  fun render : Html {
    <div::root>
      <Message
        subtitle=<>"The requested URL doesn’t exist."</>
        title=<>"404"</>
        actions={
          <Content>
            ContentInstrumenter.instrument(
              <>
                "Go back to our "

                <a href="/">"Home page"</a>

                "."
              </>)
          </Content>
        }
      />
    </div>
  }
}
