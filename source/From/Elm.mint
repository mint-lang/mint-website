module From {
  const ELM =
    {
      title: "Elm",
      data:
        defer {
          description:
            <<#MARKDOWN
    Mint and Elm are both functional, statically typed languages that compile
    to JavaScript, but they differ in philosophy and design. Elm takes a
    minimalistic and strict approach, emphasizing simplicity and safety with a
    rigid architecture and limited JavaScript interop. In contrast, Mint is
    more pragmatic and expressive, offering built-in features like CSS styling,
    promises for side effects, and more flexible syntax.
            MARKDOWN,
          items:
            {
              "Numbers" => FromItem.String("3"),
              "Numbers (Float)" => FromItem.String("3.1415"),
              "Strings (single line)" => FromItem.String("\"Hello World\""),
              "Strings (multi line)" =>
                FromItem.String("\"\"\"Hello World!\nAnother line!\"\"\""),
              "Comments (single line)" => FromItem.String("-- Comment"),
              "Comments (multi line)" =>
                FromItem.String("{-\nMulti\nLine\nComment\n-}"),
              "Booleans" => FromItem.String("True\nFalse"),
              "Arrays" => FromItem.String("[]\n[1, 2, 3]"),
              "Tuples" => FromItem.String("(1, \"Hello\", true)"),
              "Maps" => FromItem.String("Dict.fromList [(\"key\", value)]"),
              "Objects / Records" => FromItem.String("{ x = 3, y = 3 }"),
              "Object update" => FromItem.String("{ point | y = 10 }"),
              "Field access" => FromItem.String("point.x"),
              "Indexed access" => FromItem.NotAvailable,
              "Functions" => FromItem.String("sum x, y =\n  x + y"),
              "Anonymous functions" => FromItem.String("\\x y -> x + y"),
              "Function call" => FromItem.String("max 3, 4"),
              "Function call (labelled)" => FromItem.NotAvailable,
              "Mapping over arrays" => FromItem.String("List.map sqrt numbers"),
              "Assignment" => FromItem.String("let x = 42 in ..."),
              "Constants" => FromItem.String("the_answer = 42"),
              "String concatenation" =>
                FromItem.String("\"Hello\" ++ \"World!\""),
              "String interpolation" => FromItem.NotAvailable,
              "Modules" => FromItem.String(
                "module MyModule exposing (identity)"),
              "ADTs" =>
                FromItem.String(
                  <<~ELM
                  type User
                    = LoggedIn String
                    | Guest
                  ELM),
              "Case" =>
                FromItem.String(
                  <<~ELM
                  case user of
                    LoggedIn name -> name
                    Guest -> "Guest user"
                  ELM),
              "Blocks" =>
                FromItem.String(
                  <<~ELM
                  let
                    theAnswer =
                      getTheAnswer()
                  in
                    "The answer is: " ++ theAnswer
                  ELM),
              "If" =>
                FromItem.String(
                  <<~ELM
                  if value then
                    "It's true!"
                  else
                    "It's not true."
                  ELM),
              "If (Different Types)" =>
                FromItem.String(
                  <<~ELM
                  if age > 21 then
                    Ok true
                  } else {
                    Err "Age must be over 21"
                  }
                  ELM),
              "Export / Import" =>
                FromItem.String(
                  <<~ELM
                  module MyModule exposing (identity)
                  ...
                  import MyModule exposing (identity)
                  ELM)
            }
        }
    }
}
