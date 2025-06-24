module From {
  const JAVASCRIPT =
    {
      title: "JavaScript",
      data:
        defer {
          description:
            <<#MARKDOWN
    Mint is a functional, statically typed programming language designed for
    building web applications, whereas JavaScript is an imperative,
    dynamically typed language widely used for client-side scripting. Mint
    provides stronger type safety, a more declarative style, and includes
    built-in features like state management and styling through its compiler.
    In contrast, JavaScript relies more on external libraries and runtime
    checks, offering greater flexibility but less built-in structure.
            MARKDOWN,
          items:
            {
              "Numbers" => FromItem.String("3"),
              "Numbers (Float)" => FromItem.String("3.1415"),
              "Strings (single line)" => FromItem.String("\"Hello World!\""),
              "Strings (multi line)" =>
                FromItem.String("`Hello World!\nAnother line!`"),
              "Comments (single line)" => FromItem.String("// Comment"),
              "Comments (multi line)" =>
                FromItem.String("/*\nMulti\nLine\nComment\n*/"),
              "Booleans" => FromItem.String("true\nfalse"),
              "Arrays" => FromItem.String("[]\n[1, 2, 3]"),
              "Tuples" => FromItem.String("[1, \"Hello\", true]"),
              "Maps" => FromItem.String("new Map([[\"key\", value]])"),
              "Objects / Records" => FromItem.String("{ x: 3, y: 3 }"),
              "Object update" => FromItem.String("{ ...point, y: 10 }"),
              "Field access" => FromItem.String("point.x"),
              "Indexed access" =>
                FromItem.String("array[0]\ntuple[0]\nobject[key]"),
              "Functions" => FromItem.String("function(x, y) { return x + y; }"),
              "Anonymous functions" => FromItem.String("(x, y) => x + y"),
              "Function call" => FromItem.String("Math.max(3, 4)"),
              "Function call (labelled)" => FromItem.NotAvailable,
              "Mapping over arrays" =>
                FromItem.String(
                  <<~JAVASCRIPT
                  numbers.map(Math.sqrt)
                  points.map(function(p) { return p.x })
                  JAVASCRIPT),
              "Assignment" =>
                FromItem.String("var x = 42\nlet x = 42\nconst x = 42"),
              "Constants" => FromItem.String("const THE_ANSWER = 42"),
              "String concatenation" => FromItem.String(
                "\"Hello\" + \"World!\""),
              "Modules" =>
                FromItem.String("export default const indentity = (a) => a"),
              "ADTs" => FromItem.NotAvailable,
              "Case" => FromItem.NotAvailable,
              "Blocks" =>
                FromItem.String(
                  <<~JAVASCRIPT
                  {
                    let theAnswer =
                      getTheAnswer()

                    // No return from block...
                  }
                  JAVASCRIPT),
              "If" =>
                FromItem.String(
                  <<~JAVASCRIPT
                  if (value) {
                    "It's true!"
                  } else {
                    "It's not true."
                  }
                  JAVASCRIPT),
              "If (Different Types)" =>
                FromItem.String(
                  <<~JAVASCRIPT
                  if (age > 21) {
                    return true
                  } else {
                    return {
                      msg: "Age must be over 21",
                      result: "error"
                    }
                  }
                  JAVASCRIPT),
              "Export / Import" =>
                FromItem.String(
                  <<~JAVASCRIPT
                  export default const indentity = (a) => a
                  ...
                  import indentity from "./indentity.js"
                  JAVASCRIPT)
            }
        }
    }
}
