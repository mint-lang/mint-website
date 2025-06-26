component Main {
  state start : Number = Time.toUnix(Time.now())
  state duration : Number = 15000
  state elapsed : Number = 0

  use Provider.AnimationFrame {
    frames:
      (value : Number) {
        next { elapsed: Math.min(Time.toUnix(Time.now()) - start, 30000) }
      }
  }

  style root {
    flex-direction: column;
    max-width: 300px;
    display: flex;
    gap: 10px;
  }

  style field {
    display: flex;
    gap: 10px;

    span {
      flex: 0 0 120px;
    }

    span + * {
      flex: 1;
    }
  }

  fun handleDurationChange (event : Html.Event) {
    let duration =
      (event.target
      |> Dom.getValue()
      |> Number.fromString()) or 0

    next { duration: duration }
  }

  fun handleReset {
    next { elapsed: 0, start: Time.toUnix(Time.now()) }
  }

  fun render : Html {
    <div::root>
      <div::field>
        <span>"Elapsed Time:"</span>
        <meter min="0" max="#{duration}" value="#{elapsed}"/>
      </div>

      <div::field>
        <span/>
        <span>"#{Number.toFixed(Math.min(duration, elapsed) / 1000, 1)}s"</span>
      </div>

      <div::field>
        <span>"Duration:"</span>

        <input
          onInput={handleDurationChange}
          value="#{duration}"
          type="range"
          max="30000"
          min="0"
        />
      </div>

      <button onClick={handleReset}>"Reset Timer"</button>
    </div>
  }
}
