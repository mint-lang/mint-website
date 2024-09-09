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

  // Categorizes the documents.
  fun categorize (
    documents : Array(Document),
    title : String,
    path : String
  ) : DocumentLayoutCategory {
    {
      name: title,
      items:
        for document of documents {
          let documentPath =
            if String.isNotBlank(path) {
              "/#{basePath}/#{path}/#{document.path}"
            } else {
              "/#{basePath}/#{document.path}"
            }

          {
            content: <>document.name</>,
            searchValue: document.name,
            href: documentPath,
            mobilePrefix: "",
            icon: <></>
          }
        }
    }
  }

  // Renders the component.
  fun render : Html {
    let content =
      <Content>ContentInstrumenter.instrument(contents)</Content>

    let items =
      Array.concat(
        [
          [categorize(documents: documents.pages, title: title, path: "")],
          for category of documents.categories {
            categorize(
              documents: category.pages,
              title: category.name,
              path: category.path)
          }
        ])

    let tableOfContents =
      for item of ContentInstrumenter.tableOfContents(contents) {
        {
          content: <>item[1]</>,
          icon: <></>,
          href:
            if item[0] == "h1" {
              ""
            } else {
              "##{item[2]}"
            },
          level:
            case item[0] {
              "h1" => 0
              "h3" => 2
              => 1
            }
        }
      }

    <DocumentLayout
      tableOfContents={tableOfContents}
      contentKey={document.path}
      content={content}
      items={items}
    />
  }
}
