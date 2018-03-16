component Showcase.Highlight {
  connect Showcase.Store exposing { active, over, setActive, setOver }

  property text : String = ""
  property name : String = ""

  style base {
    background: {background};
    border-radius: 2px;
    border: {border};
    padding: 3px 5px;
    cursor: pointer;
    display: inline;
    color: {color};
  }

  get border : String {
    if (over == name) {
      "1px dashed rgba(0,0,0,0.6)"
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

      <{ text }>

    </div>
  }
}
