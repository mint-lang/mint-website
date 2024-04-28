component Select {
  // The change event handler.
  property onChange : Function(String, Promise(Void))

  // The options to display.
  property options : Array(Html)

  // The current value.
  property value : String

  // Styles for the root element.
  style root {
    position: relative;

    svg {
      position: absolute;
      height: 24px;
      width: 24px;
      right: 5px;
      top: 5px;
    }
  }

  // Styles for the select.
  style select {
    font-family: Noto Sans;
    appearance: none;
    cursor: pointer;

    border: 1px solid var(--border-color);
    background: var(--input-color);
    color: var(--text-color);
    padding: 0.5em 0.75em;
    border-radius: 3px;
    height: 34px;
    width: 100%;
  }

  // Renders the component.
  fun render : Html {
    <div::root>
      <select::select
        value={value}
        onChange={
          (event : Html.Event) {
            onChange(Dom.getValue(event.target))
          }
        }>

        options

      </select>

      TablerIcons.CHEVRON_DOWN
    </div>
  }
}
