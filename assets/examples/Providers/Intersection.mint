component Main {
  state intersecting : Bool = false

  use Provider.Intersection {
    callback: (amount : Number) { next { intersecting: amount != 1 } },
    rootMargin: "0px",
    threshold: 1,
    element: div
  }

  style div {
    animation: animate 2s both alternate infinite;

    box-sizing: border-box;
    position: absolute;
    color: white;

    place-content: center;
    display: grid;

    padding: 20px;
    height: 200px;
    width: 200px;

    if intersecting {
      background: red;
    } else {
      background: green;
    }

    @keyframes animate {
      0% {
        left: 250px;
      }

      100% {
        left: -250px;
      }
    }
  }

  fun render {
    <div::div as div>
      if intersecting {
        "Intersecting"
      } else {
        "Not Intersecting"
      }
    </div>
  }
}
