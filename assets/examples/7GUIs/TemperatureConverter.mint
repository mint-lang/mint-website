type Field {
  OutOfSync(String)
  Initial(String)
  Invalid(String)
  Valid(String)
}

component Main {
  state fahrenheit : Field = Field.Initial("")
  state celsius : Field = Field.Initial("")

  style root {
    white-space: nowrap;
    align-items: center;
    display: flex;
    gap: 10px;
  }

  style field (field : Field) {
    case field {
      Invalid => background: #FFB5B5;
      OutOfSync => background: #EEE;
      =>
    }
  }

  fun toFahrenheit (value : String) {
    Maybe.map(Number.fromString(value),
      (celsius : Number) { {celsius, Math.round(celsius * (9 / 5) + 32)} })
  }

  fun toCelsius (value : String) {
    Maybe.map(Number.fromString(value),
      (fahrenheit : Number) {
        {fahrenheit, Math.round((fahrenheit - 32) * (5 / 9))}
      })
  }

  fun getValue (field : Field) {
    case field {
      OutOfSync(value) => value
      Initial(value) => value
      Invalid(value) => value
      Valid(value) => value
    }
  }

  fun handleCelsius (event : Html.Event) {
    let value =
      Dom.getValue(event.target)

    let cleaned =
      String.trim(value)

    if String.isEmpty(cleaned) {
      next { celsius: Field.Initial(value) }
    } else if let Just({celsius, fahrenheit}) = toFahrenheit(cleaned) {
      next {
        fahrenheit: Field.Valid(Number.toString(fahrenheit)),
        celsius: Field.Valid(Number.toString(celsius))
      }
    } else {
      next {
        fahrenheit: Field.OutOfSync(getValue(fahrenheit)),
        celsius: Field.Invalid(cleaned)
      }
    }
  }

  fun handleFahrenheit (event : Html.Event) {
    let value =
      Dom.getValue(event.target)

    let cleaned =
      String.trim(value)

    if String.isEmpty(cleaned) {
      next { fahrenheit: Field.Initial(value) }
    } else if let Just({fahrenheit, celsius}) = toCelsius(cleaned) {
      next {
        fahrenheit: Field.Valid(Number.toString(fahrenheit)),
        celsius: Field.Valid(Number.toString(celsius))
      }
    } else {
      next {
        celsius: Field.OutOfSync(getValue(celsius)),
        fahrenheit: Field.Invalid(cleaned)
      }
    }
  }

  fun render {
    <div::root>
      <input::field(celsius)
        value={getValue(celsius)}
        onInput={handleCelsius}
        type="text"
      />

      <span>"Celsius ="</span>

      <input::field(fahrenheit)
        value={getValue(fahrenheit)}
        onInput={handleFahrenheit}
        type="text"
      />

      <span>"Fahrenheit"</span>
    </div>
  }
}
