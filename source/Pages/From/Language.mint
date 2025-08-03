async component Pages.From.Language {
  connect Application exposing { isMobile }

  property base : Map(String, FromItem)
  property data : FromData
  property from : From

  // Styles for the table.
  style table {
    border: 1px solid var(--border-color);
    border-bottom: 0;
    margin-top: 30px;

    if isMobile {
      border-bottom: 1px solid var(--border-color);
    }

    .line {
      min-height: 1em;
      display: block;
    }

    .keyword {
      color: var(--color-darkmagenta);
    }

    .regexp {
      color: var(--color-darkorange);
    }

    .namespace, .property {
      color: var(--color-indianred);
    }

    .type {
      color: var(--color-royalblue);
    }

    .string {
      color: var(--color-mintgreen);
    }

    .comment {
      color: var(--color-comment);
    }

    .number {
      color: var(--color-crimson);
    }

    pre {
      overflow: auto;
      min-width: 0;
      margin: 0;

      font-size: 16px;

      code {
        display: block;
        padding: 15px;

        if isMobile {
          padding: 10px;
        }
      }
    }
  }

  // Styles for a row.
  style row {
    border-bottom: 1px solid var(--border-color);

    grid-template-columns: 300px 1px 1fr 1px 1fr;
    align-items: center;
    display: grid;
  }

  // Styles for the header.
  style header {
    border-bottom: 3px double var(--border-color);
    background: var(--input-color);
    border-top: 0;

    position: sticky;
    font-size: 14px;
    top: 0;
  }

  // Styles for the divider.
  style divider {
    background: var(--border-color);
    align-self: stretch;

    if isMobile {
      height: 1px;
    }
  }

  // Styles for not available information.
  style not-available {
    grid-template-columns: auto 1fr;
    align-items: center;
    grid-gap: 5px;
    display: grid;

    font-size: 16px;
    opacity: 0.75;
    padding: 15px;

    if isMobile {
      padding: 10px;
    }

    svg {
      height: 24px;
      width: 24px;
    }
  }

  // Styles for custom text content.
  style text {
    padding: 15px;

    if isMobile {
      padding: 10px;
    }
  }

  // Styles missing examples.
  style missing {
    background: var(--color-crimson);
    align-self: stretch;
    padding: 15px;

    font-weight: 500;
    color: white;

    place-content: center;
    display: grid;

    if isMobile {
      padding: 10px;
    }
  }

  // Styles for a label.
  style label {
    padding: 10px 15px;
    font-weight: 500;
    font-size: 14px;
    padding: 15px;

    if isMobile {
      background: var(--input-color);
      padding: 5px 10px;
      font-size: 12px;

      justify-content: space-between;
      display: flex;
    }
  }

  // Renders a from item.
  fun renderItem (item : FromItem) {
    case item {
      NotAvailable =>
        <div::not-available>
          TablerIcons.ALERT_TRIANGLE
          "The langauge doesn't support this feature."
        </div>

      String(string) => <pre><code>string</code></pre>
      Code(html) => <pre><code>html</code></pre>
      Text(html) => <div::text>html</div>
      Html(html) => html
    }
  }

  // Renders the component.
  fun render : Html {
    let links : Map(String, String) = {
      "Numbers" => "/reference/literals#number",
      "Numbers (Float)" => "/reference/literals#number",
      "Strings (single line)" => "/reference/literals#string",
      "Strings (multi line)" => "/reference/literals#string",
      "Comments (single line)" => "/reference/comments",
      "Comments (multi line)" => "/reference/comments",
      "Booleans" => "/reference/literals#bool",
      "Arrays" => "/reference/array",
      "Tuples" => "/reference/tuple",
      "Maps" => "/reference/map",
      "Objects / Records" => "/reference/types/custom-types#composite-type",
      "Object update" => "/reference/types/custom-types#composite-type",
      "Field access" => "/reference/field-access",
      // "Indexed access" => "",
      "Functions" => "/reference/functions",
      "Anonymous functions" => "/reference/functions#anonymous-functions",
      "Function call" => "/reference/functions#calling-a-function",
      "Function call (labelled)" => "/reference/functions#calling-with-named-arguments",
      // "Mapping over arrays" => "",
      // "Assignment" => "",
      "Constants" => "/reference/constants",
      "String concatenation" => "/reference/literals#string",
      "Modules" => "/reference/modules",
      "ADTs" => "/reference/types/custom-types#algebraic-data-type",
      "Case" => "/reference/control-flow/case",
      "Blocks" => "/reference/blocks",
      "If" => "/reference/control-flow/if",
      "If (Different Types)" => "/reference/control-flow/if",
      "Export / Import" => "/reference/source-files",
    }

    <div>
      <Content>
        <PageHeader title="Coming from #{from.title}?" subtitle=""/>
        data.description

        <h2>"Syntax"</h2>

        <p>
          "You can check below how things in #{from.title} works and looks " \
          "like in Mint."
        </p>
      </Content>

      if isMobile {
        <>
          for key, value of base {
            <div::table>
              <div::label>
                case Map.get(links, key) {
                  Just(link) => <a href={link}>key</a>
                  Nothing => <span>key</span>
                }

                <span>from.title</span>
              </div>

              <div::divider/>

              case Map.get(data.items, key) {
                Just(item) => renderItem(item)
                Nothing => <div::missing>"Missing Example!"</div>
              }

              <div::divider/>

              <div::label>
                <span/>
                <span>"Mint"</span>
              </div>

              <div::divider/>
              renderItem(value)
            </div>
          }
        </>
      } else {
        <div::table>
          <div::row::header>
            <div::label>"Feature"</div>
            <div::divider/>
            <div::label>from.title</div>
            <div::divider/>
            <div::label>"Mint"</div>
          </div>

          for key, value of base {
            <div::row>
              <div::label>key</div>
              <div::divider/>

              case Map.get(data.items, key) {
                Just(item) => renderItem(item)
                Nothing => <div::missing>"Missing Example!"</div>
              }

              <div::divider/>
              renderItem(value)
            </div>
          }
        </div>
      }
    </div>
  }
}
