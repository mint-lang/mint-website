component Main {
  state counter = 0

  fun increment {
    next { counter: counter + 1 }
  }

  fun decrement {
    next { counter: counter - 1 }
  }

  fun render {
    <div>
      <button onClick={decrement}>
        "Decrement"
      </button>

      <span>
        counter
      </span>

      <button onClick={increment}>
        "Increment"
      </button>
    </div>
  }
}
