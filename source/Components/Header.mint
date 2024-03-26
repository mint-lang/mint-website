component Header {
  connect Application exposing { isWide }

  /* Styles for the root element. */
  style root {
    background-color: rgba(255,255,255,0.5);
    border-bottom: 3px double #EEE;
    background-clip: padding-box;
    backdrop-filter: blur(3px);
    position: relative;
    padding: 20px;
    z-index: 1;

    font-family: 'Noto Sans';
    font-size: 16px;

    if isWide {
      background: rgba(255,255,255,0.75);
    } else {
      background: rgba(255,255,255,0.5);
    }
  }

  /* Styles for the wrapper element. */
  style wrapper {
    justify-content: space-between;
    align-items: center;
    margin: 0 auto;
    display: flex;

    if !isWide {
      max-width: 1280px;
    }
  }

  /* Styles for the navigation. */
  style navigation {
    justify-content: center;
    flex-wrap: wrap;
    display: flex;
    gap: 30px;
  }

  /* Styles for a navigation item. */
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

  /* Style for a dropdown menu. */
  style menu {
    outline: 3px double #EEE;
    flex-direction: column;
    border-radius: 4px;
    background: white;
    gap: 0.5em;

    padding: 0.75em 0.5em;
    padding-right: 1.25em;

    position: absolute;
    display: none;
    left: -0.5em;
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

  /* Styles for the menu wrapper. */
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

  /* Styles for the brand. */
  style brand {
    display: block;
    height: 18px;

    img {
      height: 18px;
      width: 80px;
    }
  }

  /* Renders the component. */
  fun render : Html {
    <div::root>
      <div::wrapper>
        <a::brand href="/">
          <img
            src={@asset(../../assets/brand-book/logo.svg)}
            alt="Mint Logo"/>
        </a>

        <div::navigation>
          <a::item href="/install">
            TablerIcons.DOWNLOAD
            "Install"
          </a>

          /*
          <a::item href="/try">
            TablerIcons.TERMINAL
            "Sandbox"
          </a>
          */
          <div::menu-wrapper tabindex="0">
            <a::item>
              TablerIcons.BOOK
              "Docs"
            </a>

            <div::menu>
              <a::item href="/tutorial/">
                TablerIcons.CODE
                "Tutorial"
              </a>

              <a::item href="/guides/">
                TablerIcons.NOTEBOOK
                "Guides"
              </a>

              <a::item href="/reference/">
                TablerIcons.BOOKMARKS
                "Reference"
              </a>

              /*
              <a::item href="/api/">
                TablerIcons.TablerIcons.BOOKS
                "Core Library"
              </a>
              */
            </div>
          </div>

          /*
          <a::item href="/">
            TablerIcons.BOX_SEAM
            "Packages"
          </a>
          */
          <a::item href="/">
            TablerIcons.ARTICLE
            "Blog"
          </a>

          <a::item
            href="https://github.com/mint-lang/mint"
            target="_blank">

            TablerIcons.BRAND_GITHUB
            "Github"

          </a>
        </div>
      </div>
    </div>
  }
}
