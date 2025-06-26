type Flight {
  OneWay
  Return
}

type Field {
  Invalid(String)
  Valid(Time, String)
}

component Main {
  state start : Field =
    Field.Valid(Time.now(), Time.format(Time.now(), Time.Format.ENGLISH, "%F"))

  state end : Field =
    Field.Valid(Time.now(), Time.format(Time.now(), Time.Format.ENGLISH, "%F"))

  state flight : Flight = Flight.OneWay

  style root {
    max-width: 200px;

    flex-direction: column;
    display: flex;
    gap: 10px;
  }

  style input (field : Field) {
    case field {
      Invalid => background: #FFB5B5;
      =>
    }
  }

  fun getValue (field : Field) {
    case field {
      Valid(_, value) => value
      Invalid(value) => value
    }
  }

  fun parseDate (event : Html.Event, setter : Function(Field, Promise(Void))) {
    let value =
      Dom.getValue(event.target)

    setter(
      if Regexp.match(/^\d{4}-\d{2}-\d{2}$/, value) {
        Field.Valid(`new Date(Date.parse(#{value}))`, value)
      } else {
        Field.Invalid(value)
      })
  }

  fun handleFlightChange (event : Html.Event) {
    next {
      flight:
        if String.trim(Dom.getValue(event.target)) == "return" {
          Flight.Return
        } else {
          Flight.OneWay
        }
    }
  }

  fun handleBooking {
    case {flight, start, end} {
      {Return, Valid(_, start), Valid(_, end)} =>
        Window.alert("You have booked a return flight from #{start} to #{end}")

      {OneWay, Valid(_, start), _} =>
        Window.alert("You have booked a one-way flight on #{start}.")

      => next { }
    }
  }

  fun render {
    let selectValue =
      case flight {
        OneWay => "one-way"
        Return => "return"
      }

    let disabled =
      {
        case {flight, start, end} {
          {Return, Valid(start), Valid(end)} =>
            Time.toUnix(start) > Time.toUnix(end)

          {Return, _, Invalid} => true
          {Return, Invalid, _} => true
          {OneWay, Invalid, _} => true
          => false
        }
      }

    <div::root>
      <select onChange={handleFlightChange} value={selectValue}>
        <option value="one-way">"one-way flight"</option>
        <option value="return">"return flight"</option>
      </select>

      <input::input(start)
        onInput={parseDate(_, -> start)}
        value={getValue(start)}
      />

      <input::input(end)
        disabled={flight == Flight.OneWay}
        onInput={parseDate(_, -> end)}
        value={getValue(end)}
      />

      <button disabled={disabled} onClick={handleBooking}>"Book"</button>
    </div>
  }
}
