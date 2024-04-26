async component MobileMenu {
  connect Application exposing {
    isMobileMenuOpen,
    hideMobileMenu,
    toggleDarkMode,
    isDarkMode
  }

  // Styles for the root element.
  style root {
    background: var(--blur-color-2);
    backdrop-filter: blur(10px);
    transition: opacity 320ms;
    overflow: auto;

    position: fixed;
    z-index: 3;
    bottom: 0;
    right: 0;
    left: 0;
    top: 0;

    if isMobileMenuOpen {
      pointer-events: auto;
      opacity: 1;
    } else {
      pointer-events: none;
      opacity: 0;
    }
  }

  // Styles for an item.
  style item {
    grid-template-columns: auto 1fr;
    align-items: center;
    grid-gap: 10px;
    display: grid;

    border-bottom: 1px solid var(--border-color);
    padding: 15px 20px;

    color: var(--text-color);
    text-decoration: none;
    font-weight: normal;

    svg,
    div {
      --tabler-stroke-width: 1.25;
      height: 24px;
      width: 24px;
    }
  }

  // Styles for an divider.
  style divider {
    border-bottom: 3px double var(--border-color);
  }

  // Styles for the title menu item.
  style title {
    grid-template-columns: auto 1fr auto;
  }

  // Renders a component.
  fun render : Html {
    <div::root>
      <a::item::divider::title>
        TablerIcons.MENU_2
        "Navigation"

        <div onClick={hideMobileMenu}>
          TablerIcons.X
        </div>
      </a>

      <a::item href="/">
        TablerIcons.HOME
        "Home"
      </a>

      <a::item href="/install">
        TablerIcons.DOWNLOAD
        "Install"
      </a>

      <a::item href="/tutorial/">
        TablerIcons.CODE
        "Tutorial"
      </a>

      <a::item href="/guides/">
        TablerIcons.NOTEBOOK
        "Guides"
      </a>

      <a::item::divider href="/reference/">
        TablerIcons.BOOKMARKS
        "Reference"
      </a>

      <a::item::divider
        href="https://github.com/mint-lang/mint"
        target="_blank">

        TablerIcons.BRAND_GITHUB
        "Github"

      </a>

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
}
