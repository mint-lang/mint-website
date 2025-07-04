component Main {
  state dimensions : Dom.Dimensions = Dom.Dimensions.empty()

  use Provider.ElementSize { changes: -> dimensions, element: element }

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

    position: relative;
    overflow: hidden;
    resize: both;
  }

  style size {
    position: absolute;
    background: #CCC;
    font-size: 16px;
    padding: 10px;
    bottom: 0;
    right: 0;
  }

  fun render {
    <div::root>
      <div::element as element>
        "Resize me..."

        <div::size>"#{dimensions.width}px x #{dimensions.height}px"</div>
      </div>
    </div>
  }
}
