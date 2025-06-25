component Main {
  state number = 1

  fun render {
    <div>
      <h1>number</h1>

      <button onClick={() { next { number: Math.round(Math.random() * 5) + 1 } }}>
        "Roll"
      </button>
    </div>
  }
}
