component Pages.Tools {
  connect Application exposing { isMobile }

  // The tools to display.
  property tools : Array(Tool)

  // Styles for the grid.
  style grid {
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
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
    min-width: 0;

    &:hover {
      outline: 2px solid var(--color-mintgreen);
      outline-offset: 2px;
    }
  }

  // Style for the description.
  style description {
    font-size: 14px;
    line-height: 1.5;
    color: var(--text-secondary-color);

    padding: 10px;
    padding-top: 5px;
  }

  // Styles for the title of the card.
  style title {
    font-weight: bold;
    font-size: 18px;

    padding: 10px;
    padding-bottom: 0;
  }

  // Renders the component.
  fun render : Html {
    <div>
      <PageHero title="Tools">
        "Here are some curated tools for working with Mint!"

        if isMobile {
          <span>" "</span>
        } else {
          <br/>
        }

        "To add your tool here reach out on "

        ContentInstrumenter.instrument(
          <a href="https://discord.gg/NXFUJs2">"Discord"</a>)

        "."
      </PageHero>

      <div::grid>
        for tool of tools {
          <a::card href={tool.url} target="_blank" key={tool.name}>
            <div::title>tool.name</div>
            <div::description>tool.description</div>
          </a>
        }
      </div>
    </div>
  }
}
