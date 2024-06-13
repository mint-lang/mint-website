component Header {
  connect Application exposing {
    showMobileMenu,
    toggleDarkMode,
    isDarkMode,
    isMobile,
    isWide
  }

  // Styles for the root element.
  style root {
    border-bottom: 3px double var(--border-color);
    background-color: var(--blur-color);
    backdrop-filter: blur(3px);
    position: relative;
    padding: 20px;
    z-index: 2;
  }

  // Styles for the wrapper element.
  style wrapper {
    justify-content: space-between;
    align-items: center;
    margin: 0 auto;
    display: flex;

    if !isWide {
      max-width: 1280px;
    }
  }

  // Styles for the navigation.
  style navigation {
    justify-content: center;
    flex-wrap: wrap;
    display: flex;
    gap: 30px;
  }

  // Styles for a navigation item.
  style item {
    text-decoration: none;
    white-space: nowrap;
    color: inherit;

    grid-template-columns: auto 1fr;
    align-items: center;
    grid-gap: 10px;
    display: grid;
    height: 24px;

    &:hover {
      text-decoration: underline;
      cursor: pointer;
    }

    svg {
      --tabler-stroke-width: 1.25;

      height: 24px;
      width: 24px;
    }
  }

  // Style for a dropdown menu.
  style menu {
    outline: 3px double var(--border-color);
    background: var(--background-color);
    flex-direction: column;
    border-radius: 5px;
    gap: 0.5em;

    padding: 0.75em 0.5em;
    padding-right: 1.5em;

    transform: translateX(-50%);
    position: absolute;
    display: none;
    left: 50%;
    top: 35px;

    &:before {
      position: absolute;
      height: 15px;
      content: "";
      top: -15px;
      right: 0;
      left: 0;
    }
  }

  // Styles for the menu wrapper.
  style menu-wrapper {
    position: relative;

    &:hover,
    &:focus-visible,
    &:focus-within {
      > div {
        display: flex;
      }
    }
  }

  // Styles for the brand.
  style brand {
    display: block;
    color: inherit;
    height: 18px;

    svg {
      height: 18px;
      width: 80px;
    }
  }

  // Styles for the mobile button.
  style mobile-button {
    --tabler-stroke-width: 2;

    flex: 0 0 24px;
    height: 24px;
  }

  // Styles for a divider.
  style divider {
    border-left: 3px double var(--border-color);
    margin: 0 -10px;
  }

  // Renders the component.
  fun render : Html {
    <div::root>
      <div::wrapper>
        <a::brand href="/">
          @svg(../../assets/brand-book/logo.svg)
        </a>

        if isMobile {
          <div::mobile-button onClick={showMobileMenu}>
            TablerIcons.MENU_2
          </div>
        } else {
          <div::navigation>
            <a::item href="/install">
              TablerIcons.DOWNLOAD
              "Install"
            </a>

            <div::menu-wrapper tabindex="0">
              <a::item>
                TablerIcons.BOOK
                "Documentation"
              </a>

              <div::menu>
                <a::item href="/tutorial/">
                  TablerIcons.CODE
                  "Tutorial"
                </a>

                <a::item href="/guides/">
                  TablerIcons.BOOKS
                  "Guides"
                </a>

                <a::item href="/reference/">
                  TablerIcons.BOOKMARKS
                  "Reference"
                </a>

                <a::item href="/api/">
                  TablerIcons.NOTEBOOK
                  "API Docs"
                </a>
              </div>
            </div>

            <div::divider/>

            <a::item
              href="https://github.com/mint-lang/mint"
              target="_blank">

              TablerIcons.BRAND_GITHUB
              "Github"

            </a>

            <div::divider/>

            <a::item onClick={toggleDarkMode}>
              if isDarkMode {
                <>
                  TablerIcons.SUN
                  "Light Mode"
                </>
              } else {
                <>
                  TablerIcons.MOON_STARS
                  "Dark Mode"
                </>
              }
            </a>
          </div>
        }
      </div>
    </div>
  }
}
