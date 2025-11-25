component UsedInProduction {
  connect Application exposing { isMobile }

  // Styles for the root element.
  style root {
    margin-top: 50px;

    if isMobile {
      margin-top: 25px;
    }

    h2 {
      &:before {
        border-top: 1px solid var(--border-color);
        margin-top: 0.6em;
        margin-right: 1em;
        content: "";
        flex: 1;
      }
    }
  }

  // Styles for the content.
  style content {
    text-align: center;
  }

  // Styles for the projects.
  style projects {
    grid-template-columns: repeat(auto-fit, min-content);
    justify-content: center;
    grid-auto-flow: column;
    align-items: center;
    display: grid;
    gap: 40px;

    margin: 30px 0;

    if isMobile {
      grid-auto-flow: row;
      gap: 20px;
    }

    svg {
      if isMobile {
        width: 200px;
        height: 40px;
      }
    }

    a:hover svg path {
      fill: var(--color-mintgreen) !important;
    }

    svg path {
      fill: var(--text-color) !important;
    }
  }

  // Renders the component.
  fun render {
    <div::root>
      <Content fontSize={18}>
        ContentInstrumenter.instrument(<h2>"Used in production"</h2>)
      </Content>

      <div::projects>
        <a href="https://hacker-newspaper.com/" target="_blank">
          @svg(/assets/in-production/hacker-newspaper.svg)
        </a>

        <a href="https://www.dev-box.app/" target="_blank">
          @svg(/assets/in-production/devbox.svg)
        </a>
      </div>

      <div::content>
        <Content>
          "Are your also using Mint in production at your company or " \
          "project? "

          <a href="mailto:gus@mint-lang.com">"Contact us"</a>
          ", and we’ll add you to this list."
        </Content>
      </div>
    </div>
  }
}
