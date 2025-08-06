module From {
  const MINT =
    defer {
      "Numbers" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          3
          ```
          MARKDOWN),
      "Numbers (Float)" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          3.1415
          ```
          MARKDOWN),
      "Strings (single line)" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          "Hello World!"
          ```
          MARKDOWN),
      "Strings (multi line)" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          "Hello World!
          Another line!"
          ```
          MARKDOWN),
      "Comments (single line)" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          // Comment
          ```
          MARKDOWN),
      "Comments (multi line)" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          /*
          Multi
          Line
          Comment
          */
          ```
          MARKDOWN),
      "Booleans" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          true
          false
          ```
          MARKDOWN),
      "Arrays" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          [] of Number
          [1, 2, 3]
          ```
          MARKDOWN),
      "Tuples" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          {1, "Hello", true}
          ```
          MARKDOWN),
      "Maps" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          { "key" => value }
          ```
          MARKDOWN),
      "Objects / Records" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          { x: 3, y: 3 }
          ```
          MARKDOWN),
      "Object update" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          { point | y: 10 }
          ```
          MARKDOWN),
      "Field access" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          point.x
          ```
          MARKDOWN),
      "Indexed access" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          array[0]
          tuple[0]
          ```
          MARKDOWN),
      "Functions" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          fun sum(x : Number, y : Number) { x + y }
          ```
          MARKDOWN),
      "Anonymous functions" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          (x : Number, y : Number) { x + y }
          ```
          MARKDOWN),
      "Function call" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          Math.max(3, 4)
          ```
          MARKDOWN),
      "Function call (labelled)" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          Math.max(number1: 3, number2: 4)
          ```
          MARKDOWN),
      "Mapping over arrays" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          Array.map(numbers, Math.sqrt)
          Array.map(points, (point : Point) { point.x })
          Array.map(points, .x(Point))
          ```
          MARKDOWN),
      "Assignment" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          let x = 42
          ```
          MARKDOWN),
      "Constants" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          const THE_ANSWER = 42
          ```
          MARKDOWN),
      "String concatenation" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          "Hello" + "World!"
          ```
          MARKDOWN),
      "String interpolation" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          const hello = "Hello"
          const world = "World!"

          "\#{hello} \#{world}!"
          ```
          MARKDOWN),
      "Modules" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          module One {
            fun identity(x : a) : a {
              x
            }
          }
          ```
          MARKDOWN),
      "Blocks" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          {
            let theAnswer =
              getTheAnswer()

            "The answer is: \#{theAnswer}"
          }
          ```
          MARKDOWN),
      "ADTs" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          type User {
            LoggedIn(name: String)
            Guest
          }
          ```
          MARKDOWN),
      "If" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          if value {
            "It's true!"
          } else {
            "It's not true."
          }
          ```
          MARKDOWN),
      "If (Different Types)" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          if age > 21 {
            Result.Ok(true)
          } else {
            Result.Error("Age must be over 21")
          }
          ```
          MARKDOWN),
      "Case" =>
        FromItem.Html(
          <<#MARKDOWN(highlight)
          ```mint
          case user {
            LoggedIn(name) => name
            Guest => "Guest user"
          }
          ```
          MARKDOWN),
      "Export / Import" =>
        FromItem.Text(
          <>
            "Mint loads all source files so there is no need to export / import things."
          </>)
    }
}
