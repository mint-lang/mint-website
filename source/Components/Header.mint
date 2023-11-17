component Header {
  /* Styles for the root element. */
  style root {
    font-family: 'Noto Sans';
    font-size: 18px;

    border-bottom: 3px double currentColor;
    padding-bottom: 20px;
    margin-bottom: 75px;
    position: relative;

    justify-content: space-between;
    display: flex;
  }

  /* Styles for the navigation. */
  style navigation {
    justify-content: center;
    flex-wrap: wrap;
    display: flex;
    gap: 30px;

    a {
      text-decoration: none;
      white-space: nowrap;
      color: inherit;

      grid-template-columns: auto 1fr;
      align-items: center;
      grid-gap: 10px;
      display: grid;

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
      <div>""</div>

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
