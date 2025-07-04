component Main {
  state isMobile : Bool = Window.matchesMediaQuery("(max-width: 500px)")

  use Provider.MediaQuery { query: "(max-width: 500px)", changes: -> isMobile }

  fun render {
    <div>
      if isMobile {
        "Mobile View"
      } else {
        "Desktop View"
      }
    </div>
  }
}
