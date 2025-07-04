component Main {
  use Provider.OutsideClick {
    clicks: () { Window.alert("Clicked outside!") },
    elements: [element]
  }

  style root {
    height: 100vh;
    width: 100vw;

    place-content: center;
    display: grid;
  }

  style element {
    border: 2px solid #CCC;
    font-family: sans;
    font-size: 22px;
    padding: 50px;
  }

  fun render {
    <div::root><div::element as element>"Start clicking..."</div></div>
  }
}
