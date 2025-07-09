module Sheet {
  fun build (data : Map(String, String)) : Map(String, Formula) {
    Map.reduce(data, { },
      (memo : Map(String, Formula), cell : String, value : String) {
        case Parser.parse(Formula.PARSER, value) {
          Just({formula, ""}) => Map.set(memo, cell, formula)
          => memo
        }
      })
  }

  fun evaluate (sheet : Map(String, Formula)) : Map(String, Value) {
    Map.reduce(sheet, { } of String => Value,
      (cache : Map(String, Value), cell : String, formula : Formula) {
        evaluateCell(cell, sheet, cache)[1]
      })
  }

  fun evaluateCell (
    cell : String,
    sheet : Map(String, Formula),
    cache : Map(String, Value)
  ) : Tuple(Value, Map(String, Value)) {
    if let Just(value) = cache[cell] {
      {value, cache}
    } else if let Just(formula) = sheet[cell] {
      let {value, cache} =
        case formula {
          Expression(expression) => evaluateExpression(expression, sheet, cache)
          Text(value) => {Value.String(value), cache}
        }

      {value, Map.set(cache, cell, value)}
    } else {
      {Value.Empty, cache}
    }
  }

  // Evaluates a single expression using the sheet.
  fun evaluateExpression (
    expression : Expression,
    sheet : Map(String, Formula),
    cache : Map(String, Value)
  ) : Tuple(Value, Map(String, Value)) {
    case expression {
      Cell(cell) => evaluateCell(Formula.formatCoordinate(cell), sheet, cache)
      Number(number) => {Value.Number(number), cache}

      Range(start, end) =>
        {
          let {start, end} =
            normalizeRange(start, end)

          {Value.Range(start, end), cache}
        }

      Application(name, expressions) =>
        {
          let {evaluated, cache} =
            Array.reduce(expressions, {[], cache},
              (memo : Tuple(Array(Value), Map(String, Value)),
                item : Expression) {
                let {value, cache} =
                  evaluateExpression(item, sheet, cache)

                {Array.push(memo[0], value), cache}
              })

          case {name, evaluated} {
            {"mod", [Number(a), Number(b)]} =>
              {Value.Number(Math.fmod(a, b)), cache}

            {"add", [Number(a), Number(b)]} => {Value.Number(a + b), cache}
            {"sub", [Number(a), Number(b)]} => {Value.Number(a - b), cache}
            {"mul", [Number(a), Number(b)]} => {Value.Number(a * b), cache}
            {"div", [Number(a), Number(b)]} => {Value.Number(a / b), cache}

            {"prod", all} =>
              reduce(all, (a : Number, b : Number) { a * b }, sheet, cache)

            {"sum", all} =>
              reduce(all, (a : Number, b : Number) { a + b }, sheet, cache)

            => {Value.Invalid, cache}
          }
        }
    }
  }

  fun reduce (
    values : Array(Value),
    reducer : Function(Number, Number, Number),
    sheet : Map(String, Formula),
    cache : Map(String, Value)
  ) : Tuple(Value, Map(String, Value)) {
    Array.reduce(values, {Value.Number(0), cache},
      (memo : Tuple(Value, Map(String, Value)), value : Value) {
        case {memo[0], value} {
          {Value.Number(current), Empty} => {Value.Number(current), memo[1]}

          {Value.Number(current), Number(value)} =>
            {Value.Number(reducer(current, value)), memo[1]}

          {Value.Number(current), Range(start, end)} =>
            {
              let {values, memo} =
                Array.range(start.column, end.column)
                |> Array.reduce({[], cache},
                  (memo : Tuple(Array(Value), Map(String, Value)),
                    column : Number) {
                    Array.range(start.row, end.row)
                    |> Array.reduce(memo,
                      (memo : Tuple(Array(Value), Map(String, Value)),
                        row : Number) {
                        let cell =
                          "#{String.fromCharCode(column + 65)}#{row}"

                        let {value, cache} =
                          evaluateCell(cell, sheet, memo[1])

                        {Array.push(memo[0], value), cache}
                      })
                  })

              case reduce(values, reducer, sheet, cache) {
                {Value.Number(reduced), cache} =>
                  {Value.Number(current + reduced), cache}

                {item, cache} => {item, cache}
              }
            }

          => {Value.Invalid, cache}
        }
      })
  }

  // Normalizing the range so it aways goes top-bottom, left-right.
  // A6:A1 -> A1:A6
  fun normalizeRange (start : Coordinate, end : Coordinate) {
    {
      {
        column: Math.min(start.column, end.column),
        row: Math.min(start.row, end.row)
      },
      {
        column: Math.max(start.column, end.column),
        row: Math.max(start.row, end.row)
      }
    }
  }
}
