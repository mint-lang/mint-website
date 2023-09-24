component Header {
  /* Styles for the root element. */
  style root {
    font-family: 'Noto Sans';
    font-size: 18px;

    margin-bottom: 100px;
    position: relative;

    grid-template-columns: 1fr auto 1fr;
    align-items: center;
    display: grid;
  }

  /* Styles for the divider. */
  style divider {
    margin: 0 50px;

    svg {
      position: relative;
      top: 15px;
      fill: currentColor;
      height: auto;
      width: 130px;
    }
  }

  /* Styles for the navigation. */
  style navigation {
    justify-content: space-between;
    flex-wrap: wrap;
    display: flex;
    gap: 30px;

    border-bottom: 3px double currentColor;
    padding: 20px 0;

    a {
      text-decoration: none;
      white-space: nowrap;
      color: inherit;

      grid-template-columns: auto 1fr;
      align-items: center;
      grid-gap: 10px;
      display: grid;

      flex: 1;

      svg {
        --tabler-stroke-width: 1.25;

        height: 24px;
        width: 24px;
      }
    }
  }

  /* Renders the component. */
  fun render : Html {
    <div::root>
      <div::navigation>
        <a href="/install">
          TablerIcons.DOWNLOAD
          "Install"
        </a>

        <a href="/try">
          TablerIcons.TERMINAL
          "Sandbox"
        </a>

        <a href="/learn">
          TablerIcons.BOOK
          "Learn"
        </a>

        <a href="/reference">
          TablerIcons.BOOKMARKS
          "Reference"
        </a>
      </div>

      <div::divider>
        @svg(../../assets/divider.svg)
      </div>

      <div::navigation>
        <a href="/">
          TablerIcons.TablerIcons.BOOKS
          "Core Library"
        </a>

        <a href="/">
          TablerIcons.BOX_SEAM
          "Packages"
        </a>

        <a href="/">
          TablerIcons.ARTICLE
          "Blog"
        </a>

        <a href="/">
          TablerIcons.BRAND_GITHUB
          "Github"
        </a>
      </div>
    </div>
  }
}
