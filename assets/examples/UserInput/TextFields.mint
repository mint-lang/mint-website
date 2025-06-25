component Main {
  state value = ""

  fun handleInput (event : Html.Event) {
    next { value: Dom.getValue(event.target) }
  }

  fun render {
    <div>
      <input placeholder="Text to reverse" onInput={handleInput} value={value}/>
      <div>String.reverse(value)</div>
    </div>
  }
}
