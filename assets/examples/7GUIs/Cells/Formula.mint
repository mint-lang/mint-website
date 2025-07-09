module Formula {
  const PARSER =
    Parser.oneOf(
      [
        Parser.char("=")
        |> Parser.then(parseExpression())
        |> Parser.map(Formula.Expression),
        PARSE_TEXT
      ])

  const PARSE_APPLICATION =
    Parser.andThen(PARSE_IDENTIFIER,
      (id : String) {
        Parser.andThen(Parser.char("("),
          (open : String) {
            Parser.andThen(parseExpression(),
              (head : Expression) {
                Parser.andThen(
                  Parser.many(
                    Parser.andThen(Parser.char(","),
                      (comma : String) { parseExpression() })),
                    (tail : Array(Expression)) {
                      Parser.map(Parser.char(")"),
                        (close : String) {
                          Expression.Application(id, Array.unshift(tail, head))
                        })
                    })
              })
          })
      })

  const PARSE_TEXT = Parser.map(Parser.gather(/.*/, true), Formula.Text)
  const PARSE_CELL = Parser.map(PARSE_COORDINATE, Expression.Cell)
  const PARSE_DIGITS = Parser.gather(/[0-9]/)

  const PARSE_COORDINATE =
    Parser.andThen(Parser.charRegexp(/[A-Z]/),
      (column : String) {
        let column =
          (String.charCodeAt(column, 0) or 65) - 65

        Parser.andThen(Parser.maybeChar("0"),
          (zero : Bool) {
            if zero {
              Parser.succeed({ column: column, row: 0 })
            } else {
              Parser.andThen(Parser.charRegexp(/[0-9]/),
                (first : String) {
                  Parser.andThen(Parser.maybeCharRegexp(/[0-9]/),
                    (second : Maybe(String)) {
                      if let Just(second) = second {
                        if let Just(number) = Number.fromString(
                          "#{first}#{second}") {
                          Parser.succeed({ column: column, row: number })
                        } else {
                          Parser.FAIL
                        }
                      } else {
                        if let Just(number) = Number.fromString(first) {
                          Parser.succeed({ column: column, row: number })
                        } else {
                          Parser.FAIL
                        }
                      }
                    })
                })
            }
          })
      })

  const PARSE_IDENTIFIER =
    Parser.andThen(Parser.charRegexp(/[a-zA-Z_]/),
      (head : String) {
        Parser.andThen(Parser.gather(/[a-zA-Z0-9_]/, true),
          (tail : String) { Parser.succeed("#{head}#{tail}") })
      })

  const PARSE_NUMBER =
    Parser.andThen(Parser.maybeChar("-"),
      (sign : Bool) {
        let sign =
          if sign {
            "-"
          } else {
            ""
          }

        Parser.andThen(PARSE_DIGITS,
          (digits : String) {
            Parser.andThen(Parser.maybeChar("."),
              (dot : Bool) {
                if dot {
                  Parser.andThen(PARSE_DIGITS,
                    (decimals : String) {
                      if let Just(parsed) = Number.fromString(
                        "#{sign}#{digits}.#{decimals}") {
                        Parser.succeed(Expression.Number(parsed))
                      } else {
                        Parser.FAIL
                      }
                    })
                } else if let Just(parsed) = Number.fromString(
                  "#{sign}#{digits}") {
                  Parser.succeed(Expression.Number(parsed))
                } else {
                  Parser.FAIL
                }
              })
          })
      })

  const PARSE_RANGE =
    Parser.andThen(PARSE_COORDINATE,
      (start : Coordinate) {
        Parser.andThen(Parser.char(":"),
          (colon : String) {
            Parser.andThen(PARSE_COORDINATE,
              (end : Coordinate) {
                Parser.succeed(Expression.Range(start, end))
              })
          })
      })

  fun parseExpression : Parser(Expression) {
    Parser.oneOf([PARSE_APPLICATION, PARSE_RANGE, PARSE_CELL, PARSE_NUMBER])
  }

  fun format (formula : Formula) : String {
    case formula {
      Expression(expression) => "=#{formatExpression(expression)}"
      Text(value) => value
    }
  }

  fun formatCoordinate (coordinate : Coordinate) : String {
    let char =
      String.fromCharCode(65 + coordinate.column)

    "#{char}#{coordinate.row}"
  }

  fun formatRange (start : Coordinate, end : Coordinate) : String {
    "#{formatCoordinate(start)}:#{formatCoordinate(end)}"
  }

  fun formatExpression (expression : Expression) : String {
    case expression {
      Cell(coordinate) => formatCoordinate(coordinate)
      Range(start, end) => formatRange(start, end)
      Number(value) => "#{value}"

      Application(name, expressions) =>
        {
          let expressions =
            expressions
            |> Array.map(formatExpression)
            |> String.join(",")

          "#{name}(#{expressions})"
        }
    }
  }
}
