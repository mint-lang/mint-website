module From {
  const GLEAM =
    {
      title: "Gleam",
      data:
        defer {
          description:
            <<#MARKDOWN
            Mint and Gleam are both statically typed functional programming languages, but they
            differ in focus and ecosystems. Mint is tailored specifically for building front-end
            web applications, offering built-in support for styling, UI components, and a
            JavaScript-only target. Gleam, while also capable of front-end development through
            its JavaScript backend, is primarily designed for reliability and concurrency, with
            strong support for backend systems via the Erlang VM. Gleam emphasizes simplicity,
            speed, and type safety across both back- and front-end, whereas Mint provides a more
            integrated front-end developer experience with features like promises and CSS handling
            built into the language.
            MARKDOWN,
          items:
            {
              "Numbers" => FromItem.String("3"),
              "Numbers (Float)" => FromItem.String("3.1415"),
              "Strings (single line)" => FromItem.String("\"Hello World\""),
              "Strings (multi line)" =>
                FromItem.String("\"Hello World!\nAnother line!\""),
              "Comments (single line)" => FromItem.String("// Comment"),
              "Comments (multi line)" => FromItem.NotAvailable,
              "Booleans" => FromItem.String("True\nFalse"),
              "Arrays" => FromItem.String("[]\n[1, 2, 3]"),
              "Tuples" => FromItem.String("#(1, \"Hello\", true)"),
              "Maps" => FromItem.String("dict.from_list([#(\"key\", value)])"),
              "Objects / Records" => FromItem.String("Point(x: 3, y: 3)"),
              "Object update" => FromItem.String("Point(..point, y: 10)"),
              "Field access" => FromItem.String("point.x"),
              "Indexed access" => FromItem.NotAvailable,
              "Functions" => FromItem.String("fn sum(x, y) { x + y }"),
              "Anonymous functions" => FromItem.String("fn(x, y) { x + y }"),
              "Function call" => FromItem.String("max(3, 4)"),
              "Function call (labelled)" =>
                FromItem.String("max(number1: 3, number2: 4)"),
              "Mapping over arrays" =>
                FromItem.String("list.map([1, 2], int.square_root)"),
              "Assignment" => FromItem.String("let x = 42"),
              "Constants" => FromItem.String("constant the_answer = 42"),
              "String concatenation" =>
                FromItem.String("\"Hello\" <> \"World!\""),
              "String interpolation" => FromItem.NotAvailable,
              "Modules" => FromItem.String("pub fn identity (a) { a }"),
              "If" =>
                FromItem.String(
                  <<~GLEAM
                  case value {
                    True -> "It's true!"
                    False -> "It's not true."
                  }
                  GLEAM),
              "If (Different Types)" =>
                FromItem.String(
                  <<~GLEAM
                  case age > 21 {
                    True -> Ok(true)
                    False -> Error("Age must be over 21")
                  }
                  GLEAM),
              "Composite Types" =>
                FromItem.String(
                  <<~GLEAM
                    pub type User {
                      User(name: String, email: String, id: Int)
                    }
                  GLEAM),
              "ADTs" =>
                FromItem.String(
                  <<~GLEAM
                  type User {
                    LoggedIn(name: String)
                    Guest
                  }
                  GLEAM),
              "Case" =>
                FromItem.String(
                  <<~GLEAM
                  case user {
                    LoggedIn(name) -> name
                    Guest -> "Guest user"
                  }
                  GLEAM),
              "Blocks" =>
                FromItem.String(
                  <<~GLEAM
                  {
                    let the_answer =
                      get_the_answer()

                    "The answer is: " <> the_answer
                  }
                  GLEAM),
              "Export / Import" =>
                FromItem.String(
                  <<~GLEAM
                  import my_module.{ identity }
                  GLEAM)
            }
        }
    }
}
