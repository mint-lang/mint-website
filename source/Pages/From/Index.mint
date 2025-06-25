async component Pages.From.Index {
  connect Application exposing { isMobile }

  property data : Map(String, From)

  state current : String = "…"

  use Provider.Interval {
    interval: 2000,
    id: "tick",
    ticks:
      () {
        let values =
          for _, value of data {
            value
          } when {
            value.title != current
          }

        if let Just(item) = Array.sample(values) {
          next { current: item.title }
        }
      }
  }

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

  // Styles for the root element.
  style card {
    border: 1px solid var(--border-color);
    background: var(--background-color);
    text-decoration: none;
    border-radius: 5px;
    color: inherit;
    padding: 15px;
    min-width: 0;

    grid-template-columns: auto 1fr;
    align-items: center;
    display: grid;
    gap: 10px;

    font-weight: 400;
    font-size: 20px;

    svg {
      height: 30px;
      width: 30px;
    }

    &:hover {
      outline: 2px solid var(--color-mintgreen);
      outline-offset: 2px;
    }
  }

  // Renders the component.
  fun render : Html {
    <div>
      <PageHero title="From #{current}?">
        "Here you can find useful information if you are coming from " \
        "another programming language / framework!"
      </PageHero>

      <div::grid>
        for key, value of data {
          <a::card href="/from/#{key}">
            case key {
              "typescript" => @svg(/assets/icons/typescript.svg)
              "javascript" => @svg(/assets/icons/javascript.svg)
              "rescript" => @svg(/assets/icons/rescript.svg)
              "gleam" => @svg(/assets/icons/gleam.svg)
              "elm" => @svg(/assets/icons/elm.svg)
              => <></>
            }

            value.title
          </a>
        }
      </div>
    </div>
  }
}
