component Main {
  state sheet =
    Sheet.build(
      {
        "A0" => "FRUIT",
        "A1" => "Banana",
        "A2" => "Pineapple",
        "A3" => "Watermelon",
        "A4" => "Grapes",
        "A5" => "Mango",
        "A6" => "Pawpaw",
        "B0" => "PRICE PER UNIT (in TTD)",
        "B1" => "=6",
        "B2" => "=5",
        "B3" => "=7",
        "B4" => "=20",
        "B5" => "=5",
        "B6" => "=8",
        "C0" => "UNITS",
        "C1" => "=7",
        "C2" => "=4",
        "C3" => "=5",
        "C4" => "=0.5",
        "C5" => "=4",
        "C6" => "=2",
        "D0" => "PRICE (in TTD)",
        "D1" => "=mul(B1,C1)",
        "D2" => "=mul(B2,C2)",
        "D3" => "=mul(B3,C3)",
        "D4" => "=mul(B4,C4)",
        "D5" => "=mul(B5,C5)",
        "D6" => "=mul(B6,C6)",
        "C8" => "TOTAL (in TTD)",
        "D8" => "=sum(D1:D6)"
      })

  state resolved = { } of String => Value
  state editing = ""
  state value = ""

  style root {
    border-bottom: 1px solid #CCC;
    border-right: 1px solid #CCC;
    font-family: sans;

    * {
      box-sizing: border-box;
    }
  }

  style row {
    grid-template-columns: 50px repeat(26, 140px);
    display: grid;
  }

  style cell {
    border-left: 1px solid #CCC;
    border-top: 1px solid #CCC;
    display: grid;
    height: 40px;

    input {
      font-family: sans;
      font-size: 16px;
      padding: 5px;

      position: relative;
      z-index: 1000;
      height: 100%;
      width: 100%;
      border: 0;

      &:focus-visible {
        border: 1px solid cyan;
        outline: none;
      }
    }
  }

  style content {
    font-family: sans;
    cursor: pointer;
    font-size: 16px;
    padding: 5px;

    white-space: nowrap;
    overflow: auto;

    align-items: center;
    display: grid;

    &:hover {
      background: #EEE;
    }
  }

  style header {
    text-align: center;
    font-weight: bold;

    align-items: center;
    display: grid;
  }

  fun componentDidMount {
    next { resolved: Sheet.evaluate(sheet) }
  }

  fun componentDidUpdate {
    Dom.focus(input)
  }

  fun startEdit (cell : String) {
    if let Just(formula) = sheet[cell] {
      next { editing: cell, value: Formula.format(formula) }
    } else {
      next { editing: cell, value: "" }
    }
  }

  fun setValue (event : Html.Event) {
    next { value: Dom.getValue(event.target) }
  }

  fun endEdit {
    case Parser.parse(Formula.PARSER, value) {
      Just({formula, _}) => next { sheet: Map.set(sheet, editing, formula) }

      Maybe.Nothing =>
        next { sheet: Map.set(sheet, editing, Formula.Text(value)) }
    }

    next { editing: "", resolved: Sheet.evaluate(sheet) }
  }

  fun render {
    <div::root>
      <div::row>
        <div::cell::header/>

        for column of Array.range(0, 25) {
          <div::cell::header>String.fromCharCode(65 + column)</div>
        }
      </div>

      for row of Array.range(0, 99) {
        <div::row>
          <div::cell::header>row</div>

          for column of Array.range(0, 25) {
            let cell =
              Formula.formatCoordinate({ column: column, row: row })

            <div::cell onClick={() { startEdit(cell) }}>
              if cell == editing {
                <input as input
                  onInput={setValue}
                  value={value}
                  onBlur={endEdit}
                />
              } else {
                <div::content>
                  if let Just(formula) = sheet[cell] {
                    if let Just(resolved) = resolved[cell] {
                      case resolved {
                        Range(start, end) => Formula.formatRange(start, end)
                        Number(value) => "#{value}"
                        String(value) => value
                        Invalid => "INVALID!"
                        Empty => ""
                      }
                    }
                  }
                </div>
              }
            </div>
          }
        </div>
      }
    </div>
  }
}
