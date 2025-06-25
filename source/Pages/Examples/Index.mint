async component Pages.Examples.Index {
  connect Application exposing { isMobile }

  property data : Map(String, Tuple(String, Map(String, Tuple(String, String))))

  // Styles for the grid.
  style grid {
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    align-content: start;
    grid-gap: 2em;
    display: grid;

    if isMobile {
      margin-top: 20px;
      grid-gap: 15px;
    }
  }

  // Styles for an example link.
  style example {
    display: block !important;
    margin-top: 10px;
    font-size: 18px;
  }

  // Renders the component.
  fun render : Html {
    <div>
      <PageHero title="Examples">
        "Here you can find example applications written in Mint!"
      </PageHero>

      <Content>
        <div::grid>
          for slug, item of data {
            let {title, examples} =
              item

            <div>
              <h3>title</h3>

              for key, value of examples {
                <a::example href="/examples/#{slug}/#{key}">value[0]</a>
                |> ContentInstrumenter.instrument()
              }
            </div>
          }
        </div>
      </Content>
    </div>
  }
}
