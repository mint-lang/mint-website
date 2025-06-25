component Main {
  state left = 100
  state top = 100

  style button {
    position: absolute;
    left: #{left}px;
    top: #{top}px;
  }

  fun randomRange (minimum : Number, maximum : Number) {
    Math.floor(Math.random() * (maximum - minimum + 1)) + minimum
  }

  fun position {
    next { top: randomRange(50, 350), left: randomRange(50, 350) }
  }

  fun render {
    <button::button onClick={position}>"Click me!"</button>
  }
}
