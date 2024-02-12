async component Reference {
  property contents : Html
  property title : String
  property path : String
  property docs : Docs

  style root {
    grid-template-columns: 200px auto 80ch 1fr;
    min-height: calc(100vh - 140px);
    margin-bottom: auto;
    font-size: 16px;
    grid-gap: 50px;
    display: grid;
  }

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

  style divider {
    border-right: 3px double #EEE;
  }

  style category {
    border-bottom: 1px solid #EEE;
    padding-bottom: 0.25em;
    margin-bottom: 0.25em;
    margin-top: 1em;
    display: block;
  }

  fun renderPages (pages : Array(Docs.Page), path : String = "") {
    for reference of pages {
      let pagePath =
        if String.isBlank(path) {
          "/reference/#{reference.path}"
        } else {
          "/reference/#{path}/#{reference.path}"
        }

      <a::link(Window.isActiveURL(pagePath)) href={pagePath}>
        reference.name
      </a>
    }
  }

  fun render : Html {
    <div::root>
      <div>
        <div>
          <strong::category>
            title
          </strong>

          renderPages(docs.pages)
        </div>

        for category of docs.categories {
          <div>
            <strong::category>
              category.name
            </strong>

            renderPages(category.pages, category.path)
          </div>
        }
      </div>

      <div::divider/>

      <div key={path}>
        <Content>
          contents
        </Content>
      </div>

      <div/>
    </div>
  }
}
