component Showcase.HighlightBlock {
  connect Showcase.Store exposing { active, over, setActive, setOver }

  property children : Array(Html) = []
  property openingChar : String = " {"
  property closingChar : String = "}"
  property padding : String = "5px"
  property line : String = ""
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

  get border : String {
    if (over == name && active != name) {
      "1px dashed rgba(0,0,0,0.8)"
    } else {
      "1px dashed rgba(0,0,0,0.1)"
    }
  }

  get color : String {
    if (active == name) {
      "white"
    } else {
      ""
    }
  }

  get background : String {
    if (active == name) {
      "#3aad57"
    } else {
      if (over == name) {
        "rgba(0,0,0,0.15)"
      } else {
        "rgba(0,0,0,0.07)"
      }
    }
  }

  fun handleClick (event : Html.Event) : Void {
    do {
      Html.Event.stopPropagation(event)
      setActive(name)
    }
  }

  fun handleMouseEnter (event : Html.Event) : Void {
    do {
      Html.Event.stopPropagation(event)
      setOver(name)
    }
  }

  fun handleMouseLeave (event : Html.Event) : Void {
    setOver("")
  }

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
