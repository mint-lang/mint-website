/* A highlighted text component for the showcase. */
component Showcase.Highlight {
  connect Showcase.Store exposing { setActive, setOver, active, over }

  /* The text to display. */
  property text : String = ""

  /* The name of the showcase item. */
  property name : String = ""

  style base {
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    -webkit-box-decoration-break: clone;
    box-decoration-break: clone;
    background: {background};
    border-radius: 2px;
    border: {border};
    padding: 3px 5px;
    cursor: pointer;
    display: inline;
    color: {color};
  }

  /* Returns the CSS for the border. */
  get border : String {
    if (over == name) {
      "1px dashed rgba(0,0,0,0.6)"
    } else {
      "1px dashed rgba(0,0,0,0.1)"
    }
  }

  /* Returns the color of the text. */
  get color : String {
    if (active == name) {
      "white"
    } else {
      ""
    }
  }

  /* Returns the background color. */
  get background : String {
    if (active == name) {
      "#2f9e59"
    } else if (over == name) {
      "rgba(0,0,0,0.15)"
    } else {
      "rgba(0,0,0,0.07)"
    }
  }

  /* Handles the click event. */
  fun handleClick (event : Html.Event) : Promise(Never, Void) {
    sequence {
      Html.Event.stopPropagation(event)
      setActive(name)
    }
  }

  /* Handles the mouse enter event. */
  fun handleMouseEnter (event : Html.Event) : Promise(Never, Void) {
    sequence {
      Html.Event.stopPropagation(event)
      setOver(name)
    }
  }

  /* Handles the mouse leave event. */
  fun handleMouseLeave (event : Html.Event) : Promise(Never, Void) {
    setOver("")
  }

  /* Renders the component. */
  fun render : Html {
    <div::base
      onMouseLeave={handleMouseLeave}
      onMouseOver={handleMouseEnter}
      onClick={handleClick}>

      <{ text }>

    </div>
  }
}
