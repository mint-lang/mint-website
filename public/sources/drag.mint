record State {
  mousePosition : Position,
  startPosition : Position,
  dragging : Bool
}

record Position {
  left : Number,
  top : Number
}

store Store {
  property position : Position = {
    left = 0,
    top = 0
  }

  fun setPosition (value : Position) : Void {
    next { state | position = value }
  }
}

component Main {
  connect Store exposing { setPosition, position }

  state : State {
    mousePosition =
      {
        left = 0,
        top = 0
      },
    startPosition =
      {
        left = 0,
        top = 0
      },
    dragging = false
  }

  use Provider.Mouse {
    moves = \data : Html.Event => move(data),
    clicks = \data : Html.Event => void,
    ups = \data : Html.Event => end()
  } when {
    state.dragging
  }

  fun move (data : Html.Event) : Void {
    if (state.dragging) {
      setPosition(
        {
          left = state.startPosition.left - diff.left,
          top = state.startPosition.top - diff.top
        })
    } else {
      next state
    }
  } where {
    diff =
      {
        left = state.mousePosition.left - data.pageX,
        top = state.mousePosition.top - data.pageY
      }
  }

  fun end : Void {
    next { state | dragging = false }
  }

  fun start (event : Html.Event) : Void {
    do {
      Html.Event.preventDefault(event)

      next
        { state |
          mousePosition = mousePosition,
          startPosition = startPosition,
          dragging = true
        }
    }
  } where {
    mousePosition =
      {
        left = event.pageX,
        top = event.pageY
      }

    startPosition =
      {
        left = position.left,
        top = position.top
      }
  }

  style base {
    justify-content: center;
    align-items: center;
    display: flex;
    height: 100%;
    width: 100%;
  }

  style rect {
    transform: translate3d({position.left}px,{position.top}px, 0);
    justify-content: center;
    background: orangered;
    align-items: center;
    border-radius: 10px;
    position: absolute;
    font-family: sans;
    display: flex;
    height: 100px;
    width: 100px;
    cursor: move;
    color: white;
    z-index: 10;
  }

  fun render : Html {
    <div::base>
      <div::rect onMouseDown={\event : Html.Event => start(event)}>
        <{ "DragMe" }>
      </div>
    </div>
  }
}
