type Undoable(a) {
  Undoable(Array(a), a, Array(a))
}

module Undoable {
  fun new (value : a) : Undoable(a) {
    Undoable.Undoable([], value, [])
  }

  fun current (undoable : Undoable(a)) : a {
    let Undoable(_, present, _) =
      undoable

    present
  }

  fun set (undoable : Undoable(a), value : a) : Undoable(a) {
    let Undoable(past, present, _) =
      undoable

    Undoable.Undoable(Array.unshift(past, present), value, [])
  }

  fun undo (undoable : Undoable(a)) : Undoable(a) {
    case undoable {
      Undoable([], _, _) => undoable

      Undoable([head, ...rest], present, future) =>
        Undoable.Undoable(rest, head, Array.unshift(future, present))
    }
  }

  fun redo (undoable : Undoable(a)) : Undoable(a) {
    case undoable {
      Undoable(_, _, []) => undoable

      Undoable(past, present, [head, ...rest]) =>
        Undoable.Undoable(Array.unshift(past, present), head, rest)
    }
  }

  fun canUndo (undoable : Undoable(a)) : Bool {
    let Undoable(past, _, _) =
      undoable

    Array.isNotEmpty(past)
  }

  fun canRedo (undoable : Undoable(a)) : Bool {
    let Undoable(_, _, future) =
      undoable

    Array.isNotEmpty(future)
  }
}

type Circle {
  diameter : Number,
  x : Number,
  y : Number
}

type Status {
  Adjusting(Number, Circle)
  Selected(Number, Circle)
  Hovered(Number)
  Idle
}

component Panel {
  property onClose : Function(Promise(Void))
  property children : Array(Html) = []
  property left : Number
  property top : Number

  use Provider.OutsideClick { clicks: onClose, elements: [root] }

  style root {
    box-shadow: rgba(0, 0, 0, 0.15) 0px 1px 5px;
    background-color: rgb(238, 238, 238);
    border: 1px solid rgb(136, 136, 136);
    border-radius: 4px;
    padding: 10px;

    position: absolute;
    left: #{left}px;
    top: #{top}px;

    white-space: nowrap;
    text-align: center;
    font-family: sans;
    z-index: 1001;

    grid-gap: 10px;
    display: grid;
  }

  fun render : Html {
    <div::root as root>children</div>
  }
}

component Main {
  state history = Undoable.new([])
  state status = Status.Idle

  style root {
    grid-gap: 10px;
    display: grid;
    width: 400px;
  }

  style toolbar {
    justify-content: center;
    display: flex;
    gap: 10px;
  }

  style wrapper {
    position: relative;
  }

  style canvas {
    border: 1px solid rgb(187, 187, 187);
    overflow: hidden;

    position: relative;
    height: 200px;
    width: 400px;
  }

  style circle (circle : Circle, active : Bool) {
    border: 1px solid rgb(51, 51, 51);
    transform: translate(-50%, -50%);
    height: #{circle.diameter}px;
    width: #{circle.diameter}px;
    border-radius: 50%;

    left: #{circle.x}px;
    top: #{circle.y}px;
    position: absolute;

    if active {
      background: rgb(238, 238, 238);
      z-index: 1000;
    }
  }

  fun handleAdjust (index : Number, circle : Circle) {
    () { next { status: Status.Adjusting(index, circle) } }
  }

  fun handleMouseLeave {
    case status {
      Hovered | Idle => next { status: Status.Idle }
      Adjusting | Selected => next { }
    }
  }

  fun handleMouseMove (index : Number) {
    () {
      case status {
        Hovered | Idle => next { status: Status.Hovered(index) }
        Adjusting | Selected => next { }
      }
    }
  }

  fun handleDiameterChange (index : Number, event : Html.Event) {
    let circles =
      Undoable.current(history)

    let value =
      Number.fromString(Dom.getValue(event.target)) or 0

    let circles =
      Array.updateAt(circles, index,
        (circle : Circle) { { circle | diameter: value } })

    next { history: Undoable.set(history, circles) }
  }

  fun handleAdd (event : Html.Event) {
    let Just(element) =
      canvas or return next { }

    let dimensions =
      Dom.getDimensions(element)

    let circles =
      Undoable.current(history)

    let circle =
      {
        x: event.pageX - dimensions.left,
        y: event.pageY - dimensions.top,
        diameter: 30
      }

    next {
      history: Undoable.set(history, Array.push(circles, circle)),
      status: Status.Hovered(Array.size(circles))
    }
  }

  fun handleCircleClick (index : Number, circle : Circle, event : Html.Event) {
    Html.Event.stopPropagation(event)
    Html.Event.preventDefault(event)
    next { status: Status.Selected(index, circle) }
  }

  fun handleUndo {
    next { history: Undoable.undo(history) }
  }

  fun handleRedo {
    next { history: Undoable.redo(history) }
  }

  fun handleClose {
    next { status: Status.Idle }
  }

  fun render {
    let circles =
      Undoable.current(history)

    <div::root>
      <div::toolbar>
        <button onClick={handleUndo} disabled={!Undoable.canUndo(history)}>
          "Undo"
        </button>

        <button onClick={handleRedo} disabled={!Undoable.canRedo(history)}>
          "Redo"
        </button>
      </div>

      <div::wrapper>
        <div::canvas as canvas onClick={handleAdd}>
          for circle, index of circles {
            let active =
              case status {
                Hovered(selected) | Adjusting(selected) | Selected(selected) =>
                  selected == index

                Idle => false
              }

            <div::circle(circle, active)
              onClick={handleCircleClick(index, circle, _)}
              onMouseMove={handleMouseMove(index)}
              onMouseLeave={handleMouseLeave}
            />
          }
        </div>

        case status {
          Adjusting(index, circle) =>
            <Panel onClose={handleClose} left={circle.x} top={circle.y}>
              <div>
                <label>"Adjust Diameter"</label>
                <br/>

                <input
                  onChange={handleDiameterChange(index, _)}
                  type="range"
                  max="100"
                  min="0"
                />
              </div>
            </Panel>

          Selected(index, circle) =>
            <Panel onClose={handleClose} left={circle.x} top={circle.y}>
              <div onClick={handleAdjust(index, circle)}>"Adjust Diameter"</div>
            </Panel>

          => <></>
        }
      </div>
    </div>
  }
}
