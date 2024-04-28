async component Documents {
  connect Application exposing { isTablet }

  // The category of the document.
  property category : Maybe(DocumentCategory)

  // The documents to display in the sidebar.
  property documents : Documents

  // The document to display.
  property document : Document

  // The base path of the documents ("reference", "guides").
  property basePath : String

  // The contents to display.
  property contents : Html

  // The title of the documents ("Reference", "Guides").
  property title : String

  // Styles for the root element.
  style root {
    grid-template-columns: 200px auto 80ch 1fr;
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

  // Styles for the sidebar link.
  style link (active : Bool) {
    text-decoration: none;
    line-height: 1.5;
    display: block;

    if active {
      color: var(--color-mintgreen);
    } else {
      color: inherit;
    }

    &:hover {
      text-decoration: underline;
    }
  }

  // Styles for the divider.
  style divider {
    border-right: 3px double var(--border-color);
  }

  // Styles for the category titles.
  style category {
    border-bottom: 1px solid var(--border-color);
    padding-bottom: 0.25em;
    margin-bottom: 0.25em;
    font-weight: normal;
    margin-top: 1em;
    display: block;
  }

  // Styles for the table of contents.
  style table-of-contents {
    align-content: start;
    align-self: start;
    grid-gap: 5px;
    display: grid;

    position: sticky;
    top: 20px;

    strong {
      margin-bottom: 5px;
      font-weight: 600;
      font-size: 10px;
      color: #999;
    }

    a {
      text-decoration: none;
      color: inherit;

      &:hover {
        text-decoration: underline;
      }
    }
  }

  // Styles for an item in the table of contents.
  style table-of-contents-item (type : String) {
    case type {
      "h1" =>
        font-weight: 500;

      "h3" =>
        padding-left: 0.75em;
        font-size: 14px;

      =>
    }
  }

  // Styles for the content.
  style content {
    min-width: 0;
  }

  // Styles for the mobile navigation.
  style mobile-navigation {
    border-bottom: 1px solid var(--border-color);
    padding-bottom: 20px;

    grid-template-columns: auto 1fr;
    align-items: center;
    grid-gap: 10px;
    display: grid;

    label {
      font-weight: normal;
    }
  }

  // Renders documents in the sidebar.
  fun renderDocuments (
    documents : Array(Document),
    title : String,
    path : String
  ) : Html {
    <div>
      <strong::category>
        title
      </strong>

      for document of documents {
        let documentPath =
          if String.isBlank(path) {
            "/#{basePath}/#{document.path}"
          } else {
            "/#{basePath}/#{path}/#{document.path}"
          }

        <a::link(Window.isActiveURL(documentPath)) href={documentPath}>
          document.name
        </a>
      }
    </div>
  }

  // Renders the component.
  fun render : Html {
    let tableOfContents =
      ContentInstrumenter.tableOfContents(contents)

    let contentDiv =
      <div::content key={document.path}>
        <Content>
          ContentInstrumenter.instrument(contents)
        </Content>
      </div>

    <div::root>
      if isTablet {
        <>
          <div::mobile-navigation>
            <label>"Pages:"</label>

            <Select
              onChange={
                (value : String) {
                  Window.navigate("/#{basePath}/#{value}")
                }
              }
              value={
                let Just(item) =
                  category or return document.path

                "#{item.path}/#{document.path}"
              }
              options={
                Array.concat(
                  [
                    for page of documents.pages {
                      <option value="#{page.path}">
                        page.name
                      </option>
                    },
                    for category of documents.categories {
                      <optgroup label={category.name}>
                        for page of category.pages {
                          <option value="#{category.path}/#{page.path}">
                            page.name
                          </option>
                        }
                      </optgroup>
                    }
                  ])
              }/>
          </div>

          contentDiv
        </>
      } else {
        <>
          <div>
            renderDocuments(
              documents: documents.pages,
              title: title,
              path: "")

            for category of documents.categories {
              renderDocuments(
                documents: category.pages,
                title: category.name,
                path: category.path)
            }
          </div>

          <div::divider/>

          contentDiv

          <div::table-of-contents>
            <strong>"ON THIS PAGE"</strong>

            for item of tableOfContents {
              let href =
                case item[0] {
                  "h1" => ""
                  => item[2]
                }

              <a::table-of-contents-item(item[0]) href="##{href}">
                item[1]
              </a>
            }
          </div>
        </>
      }
    </div>
  }
}
