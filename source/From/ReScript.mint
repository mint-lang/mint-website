module From {
  const RESCRIPT =
    {
      title: "ReScript",
      data:
        defer {
          description:
            <<#MARKDOWN
    Mint and ReScript are both statically typed languages targeting front-end
    web development, but they differ in paradigm and ecosystem integration.
    Mint is a purely functional, domain-specific language with built-in support
    for UI, state management, and styles, offering a cohesive and opinionated
    developer experience tailored for building web apps with minimal
    boilerplate. ReScript, formerly BuckleScript, is a syntax and toolchain for
    compiling OCaml to JavaScript, focusing on performance, type safety, and
    close interop with JavaScript while maintaining a functional but pragmatic
    style. While Mint isolates developers from JavaScript for greater safety
    and consistency, ReScript emphasizes seamless integration with existing JS
    codebases and libraries.
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
              "Tuples" => FromItem.String("(1, \"Hello\", true)"),
              "Maps" => FromItem.String("Map.fromArray([(\"key\", value)])"),
              "Objects / Records" => FromItem.String("{ x: 3, y: 3 }"),
              "Object update" => FromItem.String("{ ...point, y: 10 }"),
              "Field access" => FromItem.String("point.x"),
              "Indexed access" => FromItem.String("array[0]"),
              "Functions" => FromItem.String("let sum = (x, y) => { x + y; }"),
              "Anonymous functions" => FromItem.String("(x, y) => x + y"),
              "Function call" => FromItem.String("Math.max(3, 4)"),
              "Function call (labelled)" =>
                FromItem.String("Math.max(~number1=3, ~number2=4)"),
              "Mapping over arrays" =>
                FromItem.String(
                  <<~RESCRIPT
                  Array.map(points, Math.sqrt)
                  Array.map(points, (point) => { point.x })
                  RESCRIPT),
              "Assignment" => FromItem.String("let x = 42"),
              "Constants" => FromItem.String("let theAnswer = 42"),
              "String concatenation" =>
                FromItem.String("\"Hello\" ++ \"World!\""),
              "Modules" =>
                FromItem.String(
                  <<~RESCRIPT
                  module One = {
                    let identity = (x) => {
                      x
                    }
                  }
                  RESCRIPT),
              "ADTs" =>
                FromItem.String(
                  <<~RESCRIPT
                  type user =
                    | LoggedIn({name: string})
                    | Guest
                  RESCRIPT),
              "Case" =>
                FromItem.String(
                  <<~RESCRIPT
                  switch user {
                    | LoggedIn({name}) => name
                    | Guest => "Guest"
                  }
                  RESCRIPT),
              "Blocks" =>
                FromItem.String(
                  <<~RESCRIPT
                  {
                    let theAnswer =
                      getTheAnswer()

                    "The answer is: " ++ theAnswer
                  }
                  RESCRIPT),
              "If" =>
                FromItem.String(
                  <<~RESCRIPT
                  if (value) {
                    "It's true!"
                  } else {
                    "It's not true."
                  }
                  RESCRIPT),
              "If (Different Types)" =>
                FromItem.String(
                  <<~RESCRIPT
                  if (age > 21) {
                    Ok(true)
                  } else {
                    Error("Age must be over 21")
                  }
                  RESCRIPT),
              "Export / Import" =>
                FromItem.Text(
                  <>"ReScript doesn't have or need import/export statements."</>)
            }
        }
    }
}
