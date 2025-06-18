component Loader {
  connect Application exposing { isMobile }

  // Styles for the root element.
  style root {
    place-content: center;
    min-height: 50vh;
    display: grid;

    if isMobile {
      min-height: 70vh;
    }
  }

  fun render : Html {
    <div::root>
      <Message
        subtitle=<>"Please wait while the requested page is loading."</>
        title=<>"......"</>
      />
    </div>
  }
}
