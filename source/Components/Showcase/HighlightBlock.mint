/* A highlighted block component for the showcase. */
component Showcase.HighlightBlock {
  connect Showcase.Store exposing { setActive, setOver, active, over }

  /* The children to render. */
  property children : Array(Html) = []

  /* The opening character of the block. */
  property openingChar : String = " {"

  /* The closing character of the block. */
  property closingChar : String = "}"

  /* The padding of the block. */
  property padding : String = "5px"

  /* The line content. */
  property line : String = ""

  /* The name of the showcase item. */
  property name : String = ""

  style base {
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    background: {background};
    padding: {padding};
    border-radius: 2px;
    border: {border};
    cursor: pointer;
    color: {color};

    @media (max-width: 600px) {
      white-space: pre-wrap;
    }
  }

  style content {
    padding-left: 15px;
  }

  /* Returns the CSS for the border. */
  get border : String {
    if (over == name && active != name) {
      "1px dashed rgba(0,0,0,0.8)"
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
    } else {
      if (over == name) {
        "rgba(0,0,0,0.15)"
      } else {
        "rgba(0,0,0,0.07)"
      }
    }
  }

  /* Handles the click event. */
  fun handleClick (event : Html.Event) : Void {
    do {
      Html.Event.stopPropagation(event)
      setActive(name)
    }
  }

  /* Handles the mouse enter event. */
  fun handleMouseEnter (event : Html.Event) : Void {
    do {
      Html.Event.stopPropagation(event)
      setOver(name)
    }
  }

  /* Handles the mouse leave event. */
  fun handleMouseLeave (event : Html.Event) : Void {
    setOver("")
  }

  /* Renders the component. */
  fun render : Html {
    <div::base
      onMouseLeave={handleMouseLeave}
      onMouseOver={handleMouseEnter}
      onClick={handleClick}>

      <div>
        <{ line + openingChar }>
      </div>

      <div::content>
        <{ children }>
      </div>

      <{ closingChar }>

    </div>
  }
}
