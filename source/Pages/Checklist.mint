component Pages.Checklist {
  // Styles for the items grid.
  style items {
    grid-template-columns: repeat(auto-fill, minmax(20em, 1fr));
    align-content: start;
    grid-gap: 2em;
    display: grid;

    border-top: 3px double var(--border-color);
    padding-top: 30px;
    margin-top: 20px;
  }

  // Styles for an item.
  style item (status : String) {
    --tabler-stroke-width: 1.75;

    grid-template-columns: auto 1fr;
    grid-gap: 0.25em 0.33em;
    align-content: start;
    align-items: center;
    display: grid;

    font-size: 18px;

    svg {
      height: 18px;
      width: 18px;

      g {
        case status {
          "PARTIAL" => stroke: var(--color-darkorange);
          "NOT_APPLICABLE" => stroke: currentColor;
          "YES" => stroke: var(--color-mintgreen);
          => stroke: var(--color-crimson);
        }
      }
    }

    span {
      font-size: 16px;
      grid-column: 2;
    }
  }

  // Renders the component.
  fun render : Html {
    <div>
      <Content>
        <<#MARKDOWN
        # Language Checklist

        This page shows the status of selected items from the [Language
        Checklist] - intended to be informative.

        [Language Checklist]: https://alexshroyer.com/posts/2024-02-23-Language-Checklist.html
        MARKDOWN
        |> ContentInstrumenter.instrument()

        <div::items>
          for item of [
            {"YES", "Compiler", <>"Compiles to JavaScript (ESModules)."</>},
            {
              "YES",
              "Type Checking",
              <>"Hindley-Milner type system with some additions."</>
            },
            {
              "YES",
              "Code Formatter",
              <>
                "Line length aware formatter with the "
                <code>"mint format"</code>
                " command."
              </>
            },
            {
              "YES",
              "Package Manager",
              <>"Built-in package manager. Packages are git repositories."</>
            },
            {
              "YES",
              "Test Framework",
              <>
                "Built-in language features for writing tests and built-in test runner."
              </>
            },
            {
              "YES",
              "Deployment Story",
              <>
                "Applications are compiled to static files which can be easily hosted anywhere."
              </>
            },
            {
              "YES",
              "Editor Integration",
              <>
                "Some extensions, but generally editors can integrate via the language server."
              </>
            },
            {"YES", "Web Apps", <>"That is what it is designed for."</>},
            {
              "YES",
              "Super Fast Compilation Times",
              <>"~100K LOC in seconds."</>
            },
            {
              "YES",
              "Easy to Learn",
              <>"There is an interactive tutorial and examples."</>
            },
            {
              "YES",
              "Documentation",
              <>
                "Interactive tutorial, extensive language reference and guides."
              </>
            },
            {
              "YES",
              "Standard Library",
              <>"Large standard library with online documentation."</>
            },
            {"YES", "Syntax highlighted by GitHub", <>"Well of course!"</>},
            {
              "YES",
              "Language Server",
              <>"Most important things are implemented."</>
            },
            {
              "PARTIAL",
              "Debugger",
              <>
                "No built-in debugger. Programs can be debugged with " \
                "JavaScript developer tools."
              </>
            },
            {
              "PARTIAL",
              "Profiler",
              <>
                "No built-in profiler. Programs can be profiled with " \
                "JavaScript developer tools."
              </>
            },
            {
              "PARTIAL",
              "Linter",
              <>
                "Shows errors with the "
                <code>"mint lint"</code>
                " command."
              </>
            },
            {
              "PARTIAL",
              "Native Apps (Cross Platform)",
              <>"Native apps can be built using Electron or Tauri."</>
            },
            {
              "PARTIAL",
              "Cross Platform Compiler",
              <>"Linux and macOS are supported, Windows will be soon."</>
            },
            {
              "NO",
              "Cryptography Library",
              <>"No native cryptography library exists yet."</>
            },
            {
              "NO",
              "Version Manager",
              <>
                "No built-in version manager. Versions can be managed by third party tools like "
                <code>"asdf"</code>
                "."
              </>
            },
            {"NO", "REPL", <>"No REPL yet."</>},
            {"NO", "Book", <>"No book on yet."</>},
            {"NO", "Podcast", <>"No podcast yet."</>},
            {"NO", "Corporate Sponsor", <>"No corporate sponsor."</>},
            {"NOT_APPLICABLE", "Web Framework", <>"Not applicable."</>},
            {"NOT_APPLICABLE", "Drivers for Databases", <>"Not applicable."</>}
          ] {
            let {status, name, description} =
              item

            <div::item(status)>
              case status {
                "NOT_APPLICABLE" => TablerIcons.CIRCLE_MINUS
                "PARTIAL" => TablerIcons.CIRCLE_PERCENTAGE
                "YES" => TablerIcons.CIRCLE_CHECK
                => TablerIcons.CIRCLE_X
              }

              <b>name</b>
              <span>description</span>
            </div>
          }
        </div>
      </Content>
    </div>
  }
}
