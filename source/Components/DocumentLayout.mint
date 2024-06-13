// Type for a category of navigation items.
type DocumentLayoutCategory {
  items : Array(DocumentLayoutItem),
  name : String
}

// Type for a navigation item.
type DocumentLayoutItem {
  mobilePrefix : String,
  searchValue : String,
  content : Html,
  href : String,
  icon : Html
}

// Type for the documentation table of contents item.
type DocumentLayoutTocItem {
  content : Html,
  level : Number,
  href : String,
  icon : Html
}

component DocumentLayout {
  connect Application exposing { isTablet }

  // We reset the search value on any navigation.
  use Provider.Url { changes: (url : Url) { next { search: "" } } }

  // The search string.
  state search : String = ""

  // The table of contents to display.
  property tableOfContents : Array(DocumentLayoutTocItem)

  // The items to display in the sidbar.
  property items : Array(DocumentLayoutCategory)

  // The key for the content.
  property contentKey : String

  // The content to display.
  property content : Html

  // Styles for the root element.
  style root {
    grid-template-columns: minmax(200px, max-content) auto 80ch 1fr;
    min-height: calc(100vh - 140px);
    margin-bottom: auto;
    font-size: 16px;
    grid-gap: 50px;
    display: grid;

    if isTablet {
      grid-template-rows: auto 1fr;
      grid-template-columns: 1fr;
      grid-gap: 15px;
      min-width: 0;
    }
  }

  // Styles for the sidebar category titles.
  style sidebar-category {
    border-bottom: 1px solid var(--border-color);
    padding-bottom: 0.25em;
    margin-bottom: 0.25em;
    font-weight: normal;
    margin-top: 1em;
    display: block;
  }

  // Styles for the sidebar link.
  style sidebar-item (active : Bool) {
    grid-template-columns: auto 1fr;
    align-items: center;
    grid-gap: 0.33em;
    display: grid;

    padding: 0.25em 0;
    line-height: 1;

    a {
      text-decoration: none;

      &:only-child {
        grid-column: span 2;
      }

      if active {
        color: var(--color-mintgreen);
      } else {
        color: inherit;
      }
    }

    &:hover a {
      text-decoration: underline;
    }
  }

  // Styles for the divider.
  style divider {
    border-right: 3px double var(--border-color);
  }

  // Styles for the mobile navigation.
  style mobile-navigation {
    border-bottom: 1px solid var(--border-color);
    padding-bottom: 20px;
  }

  // Styles for the table of contents.
  style table-of-contents {
    align-content: start;
    align-self: start;
    grid-gap: 8px;
    display: grid;

    position: sticky;
    top: 20px;

    strong {
      font-weight: 600;
      font-size: 10px;
      color: #999;
    }
  }

  // Styles for an item in the table of contents.
  style table-of-contents-item (level : Number) {
    grid-template-columns: auto 1fr;
    align-items: center;
    grid-gap: 0.33em;
    line-height: 1;
    display: grid;

    a {
      text-decoration: none;
      color: inherit;
    }

    &:hover a {
      text-decoration: underline;
    }

    case level {
      2 =>
        padding-left: 0.75em;
        font-size: 14px;

      0 =>
        font-weight: 500;

      =>
    }
  }

  // Styles for the search input.
  style input {
    border: 1px solid var(--border-color);
    background: var(--input-color);
    border-radius: 3px;
    padding: 5px 10px;
    margin-top: 5px;
    width: 100%;

    color: var(--text-color);
    font-family: inherit;
    font-size: 14px;
  }

  // Styles for the content.
  style content {
    min-width: 0;
  }

  // Renders the component.
  fun render : Html {
    let contentDiv =
      <div::content key={contentKey}>
        content
      </div>

    <div::root>
      if isTablet {
        let headOptions =
          for item of Maybe.map(items[0], .items(DocumentLayoutCategory)) or [] {
            <option value={item.href}>
              item.mobilePrefix
              item.content
            </option>
          }

        let options =
          for category of Array.slice(items, 1, Array.size(items)) {
            <optgroup label={category.name}>
              for item of category.items {
                <option value={item.href}>
                  item.mobilePrefix
                  item.content
                </option>
              }
            </optgroup>
          }

        let value =
          (for category of items {
            for item of category.items {
              item.href
            }
          }
          |> Array.concat
          |> Array.find(Window.isActiveURL)) or ""

        <>
          <div::mobile-navigation>
            <Select
              onChange={(url : String) { Window.navigate(url) }}
              options={Array.concat([headOptions, options])}
              value={value}/>
          </div>

          contentDiv
        </>
      } else {
        let regexp =
          Regexp.createWithOptions(
            search,
            {
              caseInsensitive: true,
              multiline: false,
              unicode: false,
              global: false,
              sticky: false
            })

        let searched =
          for category of items {
            let selected =
              for item of category.items {
                item
              } when {
                Regexp.match(regexp, item.searchValue)
              }

            { category | items: selected }
          }
          |> Array.reject(
            (item : DocumentLayoutCategory) {
              Array.isEmpty(item.items)
            })

        <>
          <div>
            <strong::sidebar-category>"Search..."</strong>

            <input::input
              onInput={(event : Html.Event) { next { search: Dom.getValue(event.target) } }}
              value={search}
              type="search"/>

            for category of searched {
              <>
                <strong::sidebar-category>
                  category.name
                </strong>

                for item of category.items {
                  <div::sidebar-item(Window.isActiveURL(item.href))>
                    item.icon

                    <a href={item.href}>
                      item.content
                    </a>
                  </div>
                }
              </>
            }
          </div>

          <div::divider/>
          contentDiv

          <div::table-of-contents>
            if !Array.isEmpty(tableOfContents) {
              <>
                <strong>"ON THIS PAGE"</strong>

                for item of tableOfContents {
                  <div::table-of-contents-item(item.level)>
                    item.icon

                    if String.isBlank(item.href) {
                      <span>
                        item.content
                      </span>
                    } else {
                      <a href={item.href}>
                        item.content
                      </a>
                    }
                  </div>
                }
              </>
            }
          </div>
        </>
      }
    </div>
  }
}
