component Pages.Packages {
  connect Application exposing { isMobile }

  // The packages to display.
  property packages : Array(Package)

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
    min-width: 0;

    &:hover {
      outline: 2px solid var(--color-mintgreen);
      outline-offset: 2px;
    }
  }

  // Style for the user informtion.
  style version {
    font-size: 14px;
    display: flex;
    gap: 10px;

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
      <PageHero title="Packages">
        "Here are some curated packages for your next project!"

        if isMobile {
          <></>
        } else {
          <br/>
        }

        "To add your package here reach out on "

        ContentInstrumenter.instrument(
          <a href="https://discord.gg/NXFUJs2">"Discord"</a>)

        "."
      </PageHero>

      <div::grid>
        for package of packages {
          <a::card href="/packages/#{package.name}" key={package.name}>
            <div::title>package.name</div>
            <div::version>package.version</div>
          </a>
        }
      </div>
    </div>
  }
}
