component Main {
  state scrollTop : Number = 0

  use Provider.Scroll {
    scrolls: (event : Html.Event) { next { scrollTop: Window.scrollTop() } }
  }

  style root {
    height: 200vh;
  }

  style position {
    position: fixed;
  }

  fun render : Html {
    <div::root><div::position>"#{scrollTop}"</div></div>
  }
}
