type Parser(a) {
  Parser(Function(String, Maybe(Tuple(a, String))))
}

module Parser {
  const FAIL = Parser.Parser((input : String) { Maybe.Nothing })

  fun parse (parser : Parser(a), input : String) : Maybe(Tuple(a, String)) {
    let Parser(parser) =
      parser

    parser(input)
  }

  fun succeed (value : a) : Parser(a) {
    Parser.Parser((input : String) { Maybe.Just({value, input}) })
  }

  fun gather (regexp : Regexp, lazy : Bool = false) : Parser(String) {
    Parser.Parser(
      ((input : String) {
        `
        (() => {
          let consumed = ""
          let i = 0
          while (#{input}[i] && #{Regexp.match(regexp, `#{input}[i]`)}) {
            consumed += #{input}[i];
            i++;
          }

          if (i > 0 || #{lazy}) {
            return #{Maybe.Just({`consumed`, String.dropStart(input, `i`)})}
          } else {
            return #{Maybe.Nothing}
          }
        })()
        `
      }))
  }

  fun then (parser : Parser(a), nextParser : Parser(b)) : Parser(b) {
    Parser.Parser(
      (input : String) {
        if let Just({value, remaining}) = parse(parser, input) {
          parse(nextParser, remaining)
        }
      })
  }

  fun andThen (parser : Parser(a), mapper : Function(a, Parser(b))) : Parser(b) {
    Parser.Parser(
      (input : String) {
        if let Just({value, remaining}) = parse(parser, input) {
          parse(mapper(value), remaining)
        }
      })
  }

  fun map (parser : Parser(a), mapper : Function(a, b)) : Parser(b) {
    Parser.Parser(
      (input : String) {
        if let Just({value, remaining}) = parse(parser, input) {
          Maybe.Just({mapper(value), remaining})
        }
      })
  }

  fun many (parser : Parser(a), parsed : Array(a) = []) : Parser(Array(a)) {
    Parser.Parser(
      (input : String) {
        case parse(parser, input) {
          Just({item, remaining}) =>
            parse(many(parser, Array.push(parsed, item)), remaining)

          Nothing => Maybe.Just({parsed, input})
        }
      })
  }

  fun oneOf (parsers : Array(Parser(a))) : Parser(a) {
    Parser.Parser(
      (input : String) {
        case parsers {
          [parser, ...rest] =>
            case parse(parser, input) {
              Just(result) => Maybe.Just(result)
              Nothing => parse(oneOf(rest), input)
            }

          [] => Maybe.Nothing
        }
      })
  }

  fun maybeChar (char : String) : Parser(Bool) {
    Parser.Parser(
      (input : String) {
        if String.takeStart(input, 1) == char {
          Maybe.Just({true, String.dropStart(input, 1)})
        } else {
          Maybe.Just({false, input})
        }
      })
  }

  fun maybeCharRegexp (regexp : Regexp) : Parser(Maybe(String)) {
    Parser.Parser(
      (input : String) {
        let char =
          String.takeStart(input, 1)

        if Regexp.match(regexp, char) {
          Maybe.Just({Maybe.Just(char), String.dropStart(input, 1)})
        } else {
          Maybe.Just({Maybe.Nothing, input})
        }
      })
  }

  fun char (char : String) : Parser(String) {
    Parser.Parser(
      (input : String) {
        if String.takeStart(input, 1) == char {
          Maybe.Just({char, String.dropStart(input, 1)})
        }
      })
  }

  fun charRegexp (regexp : Regexp) : Parser(String) {
    Parser.Parser(
      (input : String) {
        let char =
          String.takeStart(input, 1)

        if Regexp.match(regexp, char) {
          Maybe.Just({char, String.dropStart(input, 1)})
        }
      })
  }
}
