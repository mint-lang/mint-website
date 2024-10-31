component Header {
  connect Application exposing { toggleDarkMode, isDarkMode, isMobile, isWide }

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

  // Renders the component.
  fun render : Html {
    let menuItems =
      [
        MenuItem.Link(
          icon: TablerIcons.DOWNLOAD,
          href: "/install",
          label: "Install",
          disabled: false,
          target: ""),
        MenuItem.Link(
          icon: TablerIcons.NEWS,
          href: "/news",
          label: "News",
          disabled: false,
          target: ""),
        MenuItem.Divider,
        MenuItem.Link(
          icon: TablerIcons.TERMINAL,
          href: "/sandbox/try",
          disabled: false,
          label: "Try",
          target: ""),
        MenuItem.Link(
          href: "/sandbox",
          icon: TablerIcons.SANDBOX,
          label: "Sandbox",
          disabled: false,
          target: ""),
        MenuItem.Divider,
        MenuItem.Link(
          icon: TablerIcons.PACKAGES,
          href: "/packages",
          label: "Packages",
          disabled: false,
          target: ""),
        MenuItem.Divider,
        MenuItem.Group(
          icon: TablerIcons.BOOK,
          label: "Documentation",
          items:
            [
              MenuItem.Link(
                href: "/tutorial/",
                icon: TablerIcons.CODE,
                label: "Tutorial",
                disabled: false,
                target: ""),
              MenuItem.Link(
                href: "/guides/",
                icon: TablerIcons.BOOKS,
                label: "Guides",
                disabled: false,
                target: ""),
              MenuItem.Link(
                href: "/reference/",
                icon: TablerIcons.BOOKMARKS,
                label: "Reference",
                disabled: false,
                target: ""),
              MenuItem.Link(
                href: "/api/",
                icon: TablerIcons.NOTEBOOK,
                label: "API Docs",
                disabled: false,
                target: "")
            ]),
        MenuItem.Divider,
        MenuItem.Link(
          href: "https://github.com/mint-lang/mint",
          icon: TablerIcons.BRAND_GITHUB,
          target: "_blank",
          label:
            if isMobile {
              "Source"
            } else {
              ""
            },
          disabled: false),
        MenuItem.Divider,
        MenuItem.Action(
          action: toggleDarkMode,
          disabled: false,
          label:
            if isMobile {
              "Toggle Mode"
            } else {
              ""
            },
          icon:
            if isDarkMode {
              TablerIcons.SUN
            } else {
              TablerIcons.MOON_STARS
            })
      ]

    let items =
      if isMobile {
        Array.unshift(menuItems,
          MenuItem.Link(
            icon: TablerIcons.HOME,
            disabled: false,
            label: "Home",
            target: "",
            href: "/"))
      } else {
        menuItems
      }

    <div::root>
      <div::wrapper>
        <a::brand href="/">@svg(../../assets/brand-book/logo.svg)</a>
        <Menu items={items}/>
      </div>
    </div>
  }
}
