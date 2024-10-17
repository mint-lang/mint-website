async component Pages.Error {
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
        subtitle=<>"Something went wrong trying to load this page."</>
        title=<>"UH OH!"</>
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
