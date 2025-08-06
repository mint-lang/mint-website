module From {
  const TYPESCRIPT =
    {
      title: "TypeScript",
      data:
        defer {
          description:
            <<#MARKDOWN
    Mint and TypeScript are both typed languages used for web development, but
    they differ significantly in design and philosophy. Mint is a purely
    functional, domain-specific language designed specifically for building
    front-end web applications with strong guarantees from its compiler,
    including built-in state management, routing, and CSS handling.
    In contrast, TypeScript is a statically typed superset of JavaScript that
    adds optional type annotations to enhance code safety while remaining
    compatible with the entire JavaScript ecosystem. While TypeScript
    improves JavaScript's developer experience, Mint aims for a more
    integrated and opinionated approach, enforcing architectural patterns that
    reduce runtime errors and boilerplate.
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
              "Arrays" => FromItem.String("let arr: number[] = []\nlet arr: Array<number> = [1, 2, 3]"),
              "Tuples" => FromItem.String("let arr: [number, string, boolean] = [1, \"Hello\", true]"),
              "Maps" => FromItem.String("new Map([[\"key\", value]])"),
              "Objects / Records" => FromItem.String("let coordinates: Record<string, number> = { x: 3, y: 3 }"),
              "Object update" => FromItem.String("{ ...point, y: 10 }"),
              "Field access" => FromItem.String("point.x"),
              "Indexed access" =>
                FromItem.String("array[0]\ntuple[0]\nobject[key]"),
              "Functions" => FromItem.String("function(x: number, y: number): number { return x + y; }"),
              "Anonymous functions" => FromItem.String("(x: number, y: number): number => x + y"),
              "Function call" => FromItem.String("Math.max(3, 4)"),
              "Function call (labelled)" => FromItem.NotAvailable,
              "Mapping over arrays" =>
                FromItem.String(
                  <<~TYPESCRIPT
                  numbers.map(Math.sqrt)
                  points.map(function(p: Point) { return p.x })
                  TYPESCRIPT),
              "Assignment" =>
                FromItem.String("var x = 42\nlet x = 42\nconst x = 42"),
              "Constants" => FromItem.String("const THE_ANSWER = 42"),
              "String concatenation" => FromItem.String(
                "\"Hello\" + \"World!\""),
              "Modules" =>
                FromItem.String("export default const indentity = (a) => a"),
              "Composite Types" => FromItem.String(
                  <<~TYPESCRIPT
                  interface User {
                    isLoggedIn: boolean
                    name: string
                  }

                  type User = {
                    isLoggedIn: boolean
                    name: string
                  }
                  TYPESCRIPT),
              "ADTs" => FromItem.NotAvailable,
              "Case" => FromItem.NotAvailable,
              "Blocks" =>
                FromItem.String(
                  <<~TYPESCRIPT
                  {
                    let theAnswer =
                      getTheAnswer()

                    // No return from block...
                  }
                  TYPESCRIPT),
              "If" =>
                FromItem.String(
                  <<~TYPESCRIPT
                  if (value) {
                    "It's true!"
                  } else {
                    "It's not true."
                  }
                  TYPESCRIPT),
              "If (Different Types)" =>
                FromItem.String(
                  <<~TYPESCRIPT
                  if (age > 21) {
                    return true
                  } else {
                    return {
                      msg: "Age must be over 21",
                      result: "error"
                    }
                  }
                  TYPESCRIPT),
              "Export / Import" =>
                FromItem.String(
                  <<~TYPESCRIPT
                  export default const indentity = (a) => a
                  ...
                  import indentity from "./indentity.ts"
                  TYPESCRIPT)
            }
        }
    }
}
