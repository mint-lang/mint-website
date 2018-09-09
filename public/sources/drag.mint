record Position {
  left : Number,
  top : Number
}

component Main {
  state mousePosition : Position =
    {
      left = 0,
      top = 0
    }

  state startPosition : Position =
    {
      left = 0,
      top = 0
    }

  state position : Position =
    {
      left = 0,
      top = 0
    }

  state dragging : Bool = false

  use Provider.Mouse {
    moves = (data : Html.Event) : Promise(Never, Void) => { move(data) },
    ups = (data : Html.Event) : Promise(Never, Void) => { end( ) },
    clicks = (data : Html.Event) : Void => { void }
  } when {
    dragging
  }

  fun move (data : Html.Event) : Promise(Never, Void) {
    if (dragging) {
      next {
        position =
          {
            left = startPosition.left - diff.left,
            top = startPosition.top - diff.top
          }
      }
    } else {
      Promise.never()
    }
  } where {
    diff =
      {
        left = mousePosition.left - data.pageX,
        top = mousePosition.top - data.pageY
      }
  }

  fun end : Promise(Never, Void) {
    next { dragging = false }
  }

  fun start (event : Html.Event) : Promise(Never, Void) {
    sequence {
      Html.Event.preventDefault(event)

      next
        { mousePosition = mousePosition,
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
      <div::rect onMouseDown={(event : Html.Event) : Promise(Never, Void) => { start(event) }}>
        <{ "DragMe" }>
      </div>
    </div>
  }
}
