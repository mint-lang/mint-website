type Feature {
  SupportedBut(explanation : String)
  Partial(explanation : String)
  NotApplicable
  NotSupported
  ViaPackage
  Supported
  TOCHECK
}

type FeatureSupport {
  javaScript : Feature,
  reScript : Feature,
  gleam : Feature,
  mint : Feature,
  elm : Feature
}

async component Pages.FeatureMatrix {
  connect Application exposing { isMobile }

  const DATA =
    {
      "Statically Typed" =>
        {
          javaScript: Feature.NotSupported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Structural Equality" =>
        {
          javaScript: Feature.NotSupported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Single Line Comments" =>
        {
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Multi Line Comments" =>
        {
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Integer" =>
        {
          javaScript: Feature.SupportedBut("As number type."),
          mint: Feature.SupportedBut("As Number type."),
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          elm: Feature.Supported
        },
      "Float" =>
        {
          javaScript: Feature.SupportedBut("As number type."),
          mint: Feature.SupportedBut("As Number type."),
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          elm: Feature.Supported
        },
      "String" =>
        {
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Interpolation" =>
        {
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Boolean" =>
        {
          gleam: Feature.SupportedBut("As a separate cutom type."),
          elm: Feature.SupportedBut("As a separate cutom type."),
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          mint: Feature.Supported
        },
      "Tuple" =>
        {
          javaScript: Feature.NotSupported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Array/List" =>
        {
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Map/Dict" =>
        {
          javaScript: Feature.SupportedBut("No custom syntax."),
          reScript: Feature.SupportedBut("No custom syntax"),
          gleam: Feature.SupportedBut("No custom syntax."),
          elm: Feature.SupportedBut("No custom syntax."),
          mint: Feature.Supported
        },
      "Regular Expressions (Syntax)" =>
        {
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Index Access" =>
        {
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Field Access" =>
        {
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Constants" =>
        {
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Modules" =>
        {
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Functions" =>
        {
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Default Arguments" =>
        {
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "-> Labelled Arguments" =>
        {
          javaScript: Feature.NotSupported,
          reScript: Feature.Supported,
          elm: Feature.NotSupported,
          gleam: Feature.Supported,
          mint: Feature.Supported
        },
      "-> Function Captures" =>
        {
          javaScript: Feature.NotSupported,
          reScript: Feature.Supported,
          elm: Feature.NotSupported,
          gleam: Feature.Supported,
          mint: Feature.Supported
        },
      "-> Anonymous Functions" =>
        {
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Pipe" =>
        {
          javaScript: Feature.NotSupported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Recursive" =>
        {
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "If" =>
        {
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "For" =>
        {
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Pattern Matching" =>
        {
          javaScript: Feature.Partial("No language feature, only on assignment"),
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Array/List" =>
        {
          javaScript: Feature.SupportedBut("Only on assignment"),
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Tuple" =>
        {
          javaScript: Feature.NotSupported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Record/Object" =>
        {
          javaScript: Feature.SupportedBut("Only on assignment"),
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> In Assignment" =>
        {
          javaScript: Feature.SupportedBut("Limited"),
          reScript: Feature.Supported,
          elm: Feature.NotSupported,
          gleam: Feature.Supported,
          mint: Feature.Supported
        },
      "-> Alternative Patterns" =>
        {
          javaScript: Feature.NotSupported,
          reScript: Feature.Supported,
          elm: Feature.NotSupported,
          gleam: Feature.Supported,
          mint: Feature.Supported
        },
      "Async/Tasks" =>
        {
          gleam: Feature.SupportedBut("Through OTP"),
          elm: Feature.SupportedBut("Through TEA"),
          javaScript: Feature.Supported,
          reScript: Feature.Supported,
          mint: Feature.Supported
        },
      "Everything an Expression" =>
        {
          javaScript: Feature.NotSupported,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Blocks" =>
        {
          javaScript: Feature.SupportedBut("Cannot return value from the block"),
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Early Return" =>
        {
          reScript: Feature.NotSupported,
          javaScript: Feature.Supported,
          elm: Feature.NotSupported,
          gleam: Feature.Supported,
          mint: Feature.Supported
        },
      "Debug Keyword" =>
        {
          javaScript: Feature.NotSupported,
          reScript: Feature.NotSupported,
          elm: Feature.NotSupported,
          gleam: Feature.Supported,
          mint: Feature.Supported
        },
      "Deferred Code" =>
        {
          javaScript: Feature.NotSupported,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "FFI" =>
        {
          elm: Feature.SupportedBut("Through ports"),
          javaScript: Feature.NotApplicable,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported
        },
      "-> Inlining" =>
        {
          javaScript: Feature.NotApplicable,
          reScript: Feature.Supported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "-> Builtin Calls" =>
        {
          javaScript: Feature.NotApplicable,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "-> Automatic Serialization" =>
        {
          javaScript: Feature.NotApplicable,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Here Documents" =>
        {
          javaScript: Feature.SupportedBut("Through template literals"),
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "-> Markdown" =>
        {
          javaScript: Feature.NotSupported,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "-> Removing Leading Whitespace" =>
        {
          javaScript: Feature.NotSupported,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Components" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "-> Async Loading" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "-> Global" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "-> References" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Html" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.Supported,
          gleam: Feature.ViaPackage,
          mint: Feature.Supported,
          elm: Feature.ViaPackage
        },
      "-> Fragments" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.Supported,
          gleam: Feature.ViaPackage,
          mint: Feature.Supported,
          elm: Feature.ViaPackage
        },
      "Styling via CSS" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          elm: Feature.ViaPackage,
          mint: Feature.Supported
        },
      "-> Conditionals" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          elm: Feature.ViaPackage,
          mint: Feature.Supported
        },
      "-> Interpolation" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Explicit State Handling" =>
        {
          elm: Feature.SupportedBut("Through TEA"),
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          mint: Feature.Supported
        },
      "Environment Variables" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          elm: Feature.ViaPackage,
          mint: Feature.Supported
        },
      "Localization" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          elm: Feature.ViaPackage,
          mint: Feature.Supported
        },
      "Routing" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          elm: Feature.ViaPackage,
          mint: Feature.Supported
        },
      "-> Navigation Capture" =>
        {
          javaScript: Feature.NotSupported,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Testing" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          elm: Feature.ViaPackage,
          mint: Feature.Supported
        },
      "Providers" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          elm: Feature.ViaPackage,
          mint: Feature.Supported
        },
      "Syntax Highlight File" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Syntax Highlight Source" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Format Source" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Inline File as String" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Inline SVG as HTML" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Link Assets" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Language Server" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.ViaPackage
        },
      "CLI" =>
        {
          javaScript: Feature.NotApplicable,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Formatter" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.Supported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.ViaPackage
        },
      "Bundler" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "-> Dead Code Elimination" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.NotSupported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Minification/Optimization" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.NotSupported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "-> Source Maps" =>
        {
          javaScript: Feature.NotApplicable,
          reScript: Feature.NotSupported,
          gleam: Feature.NotSupported,
          elm: Feature.NotSupported,
          mint: Feature.Supported
        },
      "Development Server" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.NotSupported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Package Manager" =>
        {
          gleam: Feature.SupportedBut("Through HEX"),
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Documentation Generator" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.NotSupported,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.Supported
        },
      "Test Runner" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.Supported,
          mint: Feature.Supported,
          elm: Feature.ViaPackage
        },
      "Virtual DOM" =>
        {
          javaScript: Feature.ViaPackage,
          reScript: Feature.ViaPackage,
          gleam: Feature.ViaPackage,
          mint: Feature.Supported,
          elm: Feature.Supported
        }
    }

  style root {
    background: var(--blur-color-2);
    display: grid;
    min-height: 0;
    padding: 20px;
  }

  // Styles for the root element.
  style table {
    border: 1px solid var(--border-color);
    color: currentColor;
    overflow: auto;
  }

  style feature (feature : Feature) {
    --tabler-stroke-width: 2;

    height: 29px;
    margin: 0 1px;

    justify-content: center;
    align-items: center;
    display: flex;

    color: white;

    case feature {
      NotApplicable => background: var(--line-number-color);
      NotSupported => background: var(--color-crimson);
      ViaPackage => background: var(--color-royalblue);
      Supported => background: var(--color-mintgreen);
      Partial => background: var(--color-darkorange);
      TOCHECK => background: var(--color-darkmagenta);

      SupportedBut =>
        background: var(--color-mintgreen);
        opacity: 0.7;
    }

    svg {
      height: 24px;
      width: 24px;
    }
  }

  style row {
    grid-template-columns: 300px repeat(auto-fill, 40px);
    display: grid;
  }

  style header {
    border-bottom: 3px double var(--border-color);
    background: var(--input-color);
    font-weight: bold;
    position: sticky;
    z-index: 1;
    top: 0;

    > div {
      border-right: 1px solid var(--border-color);
      padding: 15px 10px;
    }

    > div:first-child {
      align-items: end;
      display: flex;
    }
  }

  style language {
    writing-mode: sideways-lr;
  }

  style label {
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;

    font-family: Fira Code;
    padding: 4px 10px;
    font-weight: 500;
    font-size: 14px;
  }

  style feature-row {
    border-bottom: 1px solid var(--border-color);
  }

  fun renderFeature (feature : Feature) {
    <div::feature(feature)/>
  }

  // Renders the component.
  fun render : Html {
    <div::root>
      <div::table>
        <div::header::row>
          <div>"Feature"</div>
          <div::language>"Mint"</div>
          <div::language>"JavaScript"</div>
          <div::language>"Gleam"</div>
          <div::language>"Elm"</div>
          <div::language>"ReScript"</div>
          <div::language>"ClojureScript"</div>
          <div::language>"PureScript"</div>
          <div::language>"TypeScript"</div>
        </div>

        for key, feature of DATA {
          <div::row::feature-row>
            <div::label>key</div>
            renderFeature(feature.mint)
            renderFeature(feature.javaScript)
            renderFeature(feature.gleam)
            renderFeature(feature.elm)
            renderFeature(feature.reScript)
          </div>
        }
      </div>
    </div>
  }
}
