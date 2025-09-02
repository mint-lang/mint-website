module Data {
  const FEATURE_MATRIX =
    {
      "Statically Typed" =>
        {
          clojureScript: Feature.NotSupported,
          javaScript: Feature.NotSupported,
          pureScript: Feature.Supported,
          typeScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Structural Equality" =>
        {
          clojureScript: Feature.Supported,
          javaScript: Feature.NotSupported,
          typeScript: Feature.NotSupported,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Exceptions" =>
        {
          clojureScript: Feature.Supported,
          pureScript: Feature.NotSupported,
          javaScript: Feature.Supported,
          typeScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          mint: Feature.NotSupported,
          elm: Feature.NotSupported
        },
      "ADTs" =>
        {
          typeScript: Feature.Partial("Through discriminated unions."),
          clojureScript: Feature.NotSupported,
          javaScript: Feature.NotSupported,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Single Line Comments" =>
        {
          clojureScript: Feature.Supported,
          javaScript: Feature.Supported,
          typeScript: Feature.Supported,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Multi Line Comments" =>
        {
          clojureScript: Feature.NotSupported,
          javaScript: Feature.Supported,
          typeScript: Feature.Supported,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Integer" =>
        {
          clojureScript: Feature.SupportedBut("As number type."),
          javaScript: Feature.SupportedBut("As number type."),
          typeScript: Feature.SupportedBut("As number type."),
          mint: Feature.SupportedBut("As Number type."),
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          elm: Feature.Supported
        },
      "Float" =>
        {
          clojureScript: Feature.SupportedBut("As number type."),
          javaScript: Feature.SupportedBut("As number type."),
          typeScript: Feature.SupportedBut("As number type."),
          mint: Feature.SupportedBut("As Number type."),
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          elm: Feature.Supported
        },
      "String" =>
        {
          clojureScript: Feature.Supported,
          javaScript: Feature.Supported,
          typeScript: Feature.Supported,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Interpolation" =>
        {
          clojureScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          javaScript: Feature.Supported,
          typeScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Boolean" =>
        {
          gleam: Feature.SupportedBut("As a separate cutom type."),
          elm: Feature.SupportedBut("As a separate cutom type."),
          clojureScript: Feature.Supported,
          pureScript: Feature.Supported,
          typeScript: Feature.Supported,
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          mint: Feature.Supported
        },
      "Tuple" =>
        {
          typeScript: Feature.SupportedBut("Using arrays."),
          clojureScript: Feature.Supported,
          javaScript: Feature.NotSupported,
          pureScript: Feature.ViaPackage,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Array/List" =>
        {
          clojureScript: Feature.Supported,
          typeScript: Feature.Supported,
          javaScript: Feature.Supported,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Map/Dict" =>
        {
          typeScript: Feature.SupportedBut("No custom syntax."),
          javaScript: Feature.SupportedBut("No custom syntax."),
          reScript: Feature.SupportedBut("No custom syntax."),
          gleam: Feature.SupportedBut("No custom syntax."),
          elm: Feature.SupportedBut("No custom syntax."),
          clojureScript: Feature.Supported,
          pureScript: Feature.ViaPackage,
          mint: Feature.Supported
        },
      "Regular Expressions (Syntax)" =>
        {
          clojureScript: Feature.Supported,
          pureScript: Feature.NotSupported,
          typeScript: Feature.Supported,
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Index Access" =>
        {
          clojureScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          typeScript: Feature.Supported,
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Field Access" =>
        {
          clojureScript: Feature.Supported,
          pureScript: Feature.Supported,
          typeScript: Feature.Supported,
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Constants" =>
        {
          clojureScript: Feature.Supported,
          pureScript: Feature.Supported,
          typeScript: Feature.Supported,
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Modules" =>
        {
          clojureScript: Feature.Supported,
          pureScript: Feature.Supported,
          typeScript: Feature.Supported,
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Functions" =>
        {
          clojureScript: Feature.Supported,
          pureScript: Feature.Supported,
          typeScript: Feature.Supported,
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Default Arguments" =>
        {
          clojureScript: Feature.Supported,
          pureScript: Feature.NotSupported,
          typeScript: Feature.Supported,
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "-> Labelled Arguments" =>
        {
          clojureScript: Feature.NotSupported,
          javaScript: Feature.NotSupported,
          typeScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          reScript: Feature.Supported,
          elm: Feature.NotSupported,
          gleam: Feature.Supported,
          mint: Feature.Supported
        },
      "-> Function Captures" =>
        {
          clojureScript: Feature.SupportedBut("Using partial function."),
          pureScript: Feature.Partial("Functions can be curried."),
          javaScript: Feature.NotSupported,
          typeScript: Feature.NotSupported,
          reScript: Feature.Supported,
          elm: Feature.NotSupported,
          gleam: Feature.Supported,
          mint: Feature.Supported
        },
      "-> Anonymous Functions" =>
        {
          clojureScript: Feature.Supported,
          pureScript: Feature.Supported,
          typeScript: Feature.Supported,
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Pipe" =>
        {
          clojureScript: Feature.NotSupported,
          typeScript: Feature.NotSupported,
          javaScript: Feature.NotSupported,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Recursive" =>
        {
          clojureScript: Feature.Supported,
          javaScript: Feature.Supported,
          typeScript: Feature.Supported,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "If" =>
        {
          clojureScript: Feature.Supported,
          javaScript: Feature.Supported,
          typeScript: Feature.Supported,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "For" =>
        {
          clojureScript: Feature.Supported,
          pureScript: Feature.NotSupported,
          javaScript: Feature.Supported,
          typeScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Pattern Matching" =>
        {
          javaScript: Feature.Partial(
            "No language feature, only on assignment."),
          typeScript: Feature.Partial(
            "No language feature, only on assignment."),
          clojureScript: Feature.NotSupported,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Array/List" =>
        {
          javaScript: Feature.SupportedBut("Only on assignment."),
          typeScript: Feature.SupportedBut("Only on assignment."),
          clojureScript: Feature.NotSupported,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Tuple" =>
        {
          clojureScript: Feature.NotSupported,
          typeScript: Feature.NotSupported,
          javaScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Record/Object" =>
        {
          javaScript: Feature.SupportedBut("Only on assignment"),
          typeScript: Feature.SupportedBut("Only on assignment"),
          clojureScript: Feature.NotSupported,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> In Assignment" =>
        {
          javaScript: Feature.SupportedBut("Limited."),
          typeScript: Feature.SupportedBut("Limited."),
          clojureScript: Feature.NotSupported,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          elm: Feature.NotSupported,
          gleam: Feature.Supported,
          mint: Feature.Supported
        },
      "-> Alternative Patterns" =>
        {
          clojureScript: Feature.NotSupported,
          typeScript: Feature.NotSupported,
          javaScript: Feature.NotSupported,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          elm: Feature.NotSupported,
          gleam: Feature.Supported,
          mint: Feature.Supported
        },
      "-> Guards" =>
        {
          clojureScript: Feature.NotSupported,
          typeScript: Feature.NotSupported,
          javaScript: Feature.NotSupported,
          reScript: Feature.NotSupported,
          pureScript: Feature.Supported,
          mint: Feature.NotSupported,
          elm: Feature.NotSupported,
          gleam: Feature.Supported
        },
      "Async/Tasks" =>
        {
          gleam: Feature.SupportedBut("Through OTP."),
          elm: Feature.SupportedBut("Through TEA."),
          clojureScript: Feature.Supported,
          pureScript: Feature.ViaPackage,
          javaScript: Feature.Supported,
          typeScript: Feature.Supported,
          reScript: Feature.Supported,
          mint: Feature.Supported
        },
      "Everything an Expression" =>
        {
          clojureScript: Feature.Supported,
          javaScript: Feature.NotSupported,
          typeScript: Feature.NotSupported,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Blocks" =>
        {
          javaScript: Feature.SupportedBut(
            "Cannot return value from the block."),
          typeScript: Feature.SupportedBut(
            "Cannot return value from the block."),
          clojureScript: Feature.Supported,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Early Return" =>
        {
          gleam: Feature.SupportedBut(
            "With the use keyword, only Result types."),
          clojureScript: Feature.NotSupported,
          pureScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          javaScript: Feature.Supported,
          typeScript: Feature.Supported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Debug Keyword" =>
        {
          javaScript: Feature.Partial("With the debugger keyword."),
          typeScript: Feature.Partial("With the debugger keyword."),
          clojureScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          reScript: Feature.NotSupported,
          elm: Feature.NotSupported,
          gleam: Feature.Supported,
          mint: Feature.Supported
        },
      "Deferred Code" =>
        {
          clojureScript: Feature.Supported,
          typeScript: Feature.NotSupported,
          javaScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "FFI" =>
        {
          elm: Feature.SupportedBut("Through ports."),
          clojureScript: Feature.NotSupported,
          typeScript: Feature.NotApplicable,
          javaScript: Feature.NotApplicable,
          pureScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported
        },
      "-> Inlining" =>
        {
          clojureScript: Feature.NotSupported,
          javaScript: Feature.NotApplicable,
          typeScript: Feature.NotApplicable,
          pureScript: Feature.NotSupported,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "-> Automatic Serialization" =>
        {
          clojureScript: Feature.NotSupported,
          pureScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Here Documents" =>
        {
          javaScript: Feature.SupportedBut("Through template literals."),
          typeScript: Feature.SupportedBut("Through template literals."),
          clojureScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "-> Markdown" =>
        {
          clojureScript: Feature.NotSupported,
          javaScript: Feature.NotSupported,
          typeScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "-> Removing Leading Whitespace" =>
        {
          clojureScript: Feature.NotSupported,
          typeScript: Feature.NotSupported,
          javaScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Components" =>
        {
          clojureScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "-> Async Loading" =>
        {
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          clojureScript: Feature.Unkown,
          pureScript: Feature.Unkown,
          elm: Feature.NotSupported,
          mint: Feature.Supported,
          gleam: Feature.Unkown
        },
      "-> Global" =>
        {
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          clojureScript: Feature.Unkown,
          pureScript: Feature.Unkown,
          elm: Feature.NotSupported,
          reScript: Feature.Unkown,
          mint: Feature.Supported,
          gleam: Feature.Unkown
        },
      "-> References" =>
        {
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          clojureScript: Feature.Unkown,
          pureScript: Feature.Unkown,
          elm: Feature.NotSupported,
          reScript: Feature.Unkown,
          mint: Feature.Supported,
          gleam: Feature.Unkown
        },
      "Html" =>
        {
          typeScript: Feature.SupportedBut("Needs to be configured."),
          clojureScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          javaScript: Feature.ViaPackage,
          reScript: Feature.Supported,
          gleam: Feature.ViaPackage,
          mint: Feature.Supported,
          elm: Feature.ViaPackage
        },
      "-> Fragments" =>
        {
          typeScript: Feature.SupportedBut("Needs to be configured."),
          clojureScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          javaScript: Feature.ViaPackage,
          reScript: Feature.Supported,
          gleam: Feature.ViaPackage,
          mint: Feature.Supported,
          elm: Feature.ViaPackage
        },
      "Styling via CSS" =>
        {
          clojureScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          elm: Feature.ViaPackage,
          mint: Feature.Supported
        },
      "-> Conditionals" =>
        {
          clojureScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          elm: Feature.ViaPackage,
          mint: Feature.Supported
        },
      "-> Interpolation" =>
        {
          clojureScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Explicit State Handling" =>
        {
          elm: Feature.SupportedBut("Through TEA."),
          clojureScript: Feature.Supported,
          pureScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          mint: Feature.Supported
        },
      "Environment Variables" =>
        {
          clojureScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          elm: Feature.ViaPackage,
          mint: Feature.Supported
        },
      "Localization" =>
        {
          clojureScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          elm: Feature.ViaPackage,
          mint: Feature.Supported
        },
      "Routing" =>
        {
          clojureScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          elm: Feature.ViaPackage,
          mint: Feature.Supported
        },
      "-> Navigation Capture" =>
        {
          clojureScript: Feature.NotSupported,
          typeScript: Feature.NotSupported,
          javaScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Testing" =>
        {
          clojureScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          elm: Feature.ViaPackage,
          mint: Feature.Supported
        },
      "Syntax Highlight File" =>
        {
          clojureScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Syntax Highlight Source" =>
        {
          clojureScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Format Source" =>
        {
          clojureScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Inline File as String" =>
        {
          clojureScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Inline SVG as HTML" =>
        {
          clojureScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Link Assets" =>
        {
          clojureScript: Feature.NotSupported,
          pureScript: Feature.NotSupported,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Language Server" =>
        {
          clojureScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          typeScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.ViaPackage
        },
      "CLI" =>
        {
          javaScript: Feature.NotApplicable,
          clojureScript: Feature.Supported,
          pureScript: Feature.Supported,
          typeScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Formatter" =>
        {
          clojureScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.ViaPackage
        },
      "Bundler" =>
        {
          clojureScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "-> Dead Code Elimination" =>
        {
          clojureScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.NotSupported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Minification/Optimization" =>
        {
          clojureScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.NotSupported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Source Maps" =>
        {
          javaScript: Feature.NotApplicable,
          clojureScript: Feature.Supported,
          reScript: Feature.NotSupported,
          pureScript: Feature.ViaPackage,
          typeScript: Feature.Supported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Development Server" =>
        {
          clojureScript: Feature.ViaPackage,
          pureScript: Feature.NotSupported,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.NotSupported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Package Manager" =>
        {
          gleam: Feature.SupportedBut("Through HEX."),
          clojureScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Documentation Generator" =>
        {
          clojureScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Test Runner" =>
        {
          clojureScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.ViaPackage
        },
      "Virtual DOM" =>
        {
          clojureScript: Feature.ViaPackage,
          javaScript: Feature.ViaPackage,
          typeScript: Feature.ViaPackage,
          pureScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          mint: Feature.Supported,
          elm: Feature.Supported
        }
    }
}
