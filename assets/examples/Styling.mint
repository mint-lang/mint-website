component TodoItem {
  property color = "#333"
  property done = false
  property label = ""

  style label {
    font-weight: bold;
    color: #{color};
    flex: 1;

    if (done) {
      text-decoration: line-through;
    }
  }

  fun render {
    <div>
      <span::label>
        <{ label }>
      </span>

      <Icon.Checkmark/>
      <Icon.Trash/>
    </div>
  }
}
