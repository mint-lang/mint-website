async component Documents {
  /* The documents to display in the sidebar. */
  property documents : Documents

  /* The document to display. */
  property document : Document

  /* The base path of the documents ("reference", "guides"). */
  property basePath : String

  /* The contents to display. */
  property contents : Html

  /* The title of the documents ("Reference", "Guides"). */
  property title : String

  /* Styles for the root element. */
  style root {
    grid-template-columns: 200px auto 80ch 1fr;
    min-height: calc(100vh - 140px);
    margin-bottom: auto;
    font-size: 16px;
    grid-gap: 50px;
    display: grid;
  }

  /* Styles for the sidebar link. */
  style link (active : Bool) {
    text-decoration: none;
    line-height: 1.5;
    display: block;

    if active {
      color: seagreen;
    } else {
      color: inherit;
    }

    &:hover {
      text-decoration: underline;
    }
  }

  /* Styles for the divider. */
  style divider {
    border-right: 3px double #EEE;
  }

  /* Styles for the category titles. */
  style category {
    border-bottom: 1px solid #EEE;
    padding-bottom: 0.25em;
    margin-bottom: 0.25em;
    font-weight: normal;
    margin-top: 1em;
    display: block;
  }

  /* Styles for the table of contents. */
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

  /* Styles for an item in the table of contents. */
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

  /* Renders documents in the sidebar. */
  fun renderDocuments (
    documents : Array(Document),
    title : String,
    path : String
  ) : Html {
    <div>
      <strong::category>
        title
      </strong>

      for reference of documents {
        let documentPath =
          if String.isBlank(path) {
            "/#{basePath}/#{reference.path}"
          } else {
            "/#{basePath}/#{path}/#{reference.path}"
          }

        <a::link(Window.isActiveURL(documentPath)) href={documentPath}>
          reference.name
        </a>
      }
    </div>
  }

  /* Renders the component. */
  fun render : Html {
    let tableOfContents =
      ContentInstrumenter.tableOfContents(contents)

    <div::root>
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

      <div key={document.path}>
        <Content fontSize={16}>
          ContentInstrumenter.instrument(contents)
        </Content>
      </div>

      if Array.isEmpty(tableOfContents) {
        <div/>
      } else {
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
      }
    </div>
  }
}
