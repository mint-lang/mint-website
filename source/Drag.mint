record Drag.State {
  mousePosition : MouseProvider.Position,
  startPosition : MouseProvider.Position,
  dragging : Bool
}

store DragStore {
  property position : MouseProvider.Position = {
    top = 0,
    left = 0
  }

  fun setPosition (value : MouseProvider.Position) : Void {
    next { state | position = value }
  }
}

component Drag {
  connect DragStore exposing { setPosition, position }

  state : Drag.State {
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

  use MouseProvider {
    moves = \data : MouseProvider.Position => move(data),
    clicks = \data : Html.Event => void,
    ups = \data : Html.Event => end()
  } when {
    state.dragging
  }

  fun move (data : MouseProvider.Position) : Void {
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
        left = state.mousePosition.left - data.left,
        top = state.mousePosition.top - data.top
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
    transform: translate3d({position.left}px,{position.top}px, 0);
    justify-content: center;
    background: orangered;
    align-items: center;
    border-radius: 10px;
    position: absolute;
    display: flex;
    height: 100px;
    width: 100px;
    cursor: move;
    color: white;
    z-index: 10;
  }

  fun render : Html {
    <div::base onMouseDown={\event : Html.Event => start(event)}>
      <{ "DragMe" }>
    </div>
  }
}
