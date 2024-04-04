async component Footer {
  connect Application exposing { isWide, mobile }

  /* Styles for the root element. */
  style root {
    border-top: 3px double #EEE;
    padding: 40px 20px;
    margin-top: 100px;

    background-clip: padding-box;
    backdrop-filter: blur(3px);

    if mobile {
      background-color: rgba(255, 255, 255, 0.5);
      margin-top: 50px;
      padding: 20px;
    }
  }

  /* Styles for the wrapper element. */
  style wrapper {
    grid-template-columns: 1fr auto;
    grid-gap: 30px;
    display: grid;

    max-width: 1280px;
    margin: 0 auto;

    if mobile {
      grid-template-columns: 1fr;
    }
  }

  /* Styles for the columns. */
  style columns {
    grid-auto-flow: column;
    grid-gap: 50px;
    display: grid;

    if mobile {
      grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
      grid-auto-flow: row;
      grid-gap: 20px;
    }
  }

  /* Styles for a column. */
  style column {
    align-content: start;
    grid-gap: 10px;
    display: grid;

    a {
      grid-template-columns: auto 1fr;
      text-decoration: none;
      align-items: center;
      font-size: 18px;
      color: inherit;
      grid-gap: 5px;
      display: grid;

      &:hover {
        text-decoration: underline;
        color: seagreen;
      }
    }

    svg {
      --tabler-stroke-width: 1.5;

      position: relative;
      height: 20px;
      width: 20px;
      top: 1px;
    }
  }

  /* Styles for the infos. */
  style infos {
    max-width: 580px;
    line-height: 1.5;

    > img {
      width: 120px;
    }
  }

  /* Renders the component. */
  fun render : Html {
    if !isWide {
      <div::root>
        <div::wrapper>
          <div::infos>
            <img
              src={@asset(../../assets/brand-book/logo.svg)}
              alt="Mint Logo"/>

            <p>
              "Mint delivers developer happiness and productivity by offering "
              "a complete set of tools (bundler, code formatter, documentation "
              "generator, playground, package manager, etc...) for bulding "
              "single page applications."
            </p>

            <span>
              "Copyright © 2018-#{Time.year(Time.now())} Mint."
              " All rights reserved."
            </span>
          </div>

          <div::columns>
            <div::column>
              <strong>"Site"</strong>

              <a href="/">
                TablerIcons.HOME
                "Home"
              </a>

              <a href="/install">
                TablerIcons.DOWNLOAD
                "Install"
              </a>

              <a href="/brand-book">
                TablerIcons.PALETTE
                "Brand Book"
              </a>

              /*
              <a href="/sandbox">
                TablerIcons.TERMINAL
                "Sandbox"
              </a>
              */
            </div>

            <div::column>
              <strong>"Docs"</strong>

              <a href="/tutorial/">
                TablerIcons.CODE
                "Tutorial"
              </a>

              <a href="/guides/">
                TablerIcons.NOTEBOOK
                "Guides"
              </a>

              <a href="/reference/">
                TablerIcons.BOOKMARKS
                "Reference"
              </a>

              /*
              <a href="/api">
                TablerIcons.TablerIcons.BOOKS
                "Core Library"
              </a>

              <a href="/packages">
                TablerIcons.BOX_SEAM
                "Packages"
              </a>
              */
            </div>

            <div::column>
              <strong>"Source"</strong>

              <a
                href="https://github.com/mint-lang/mint"
                target="_blank">

                TablerIcons.BRAND_GITHUB
                "GitHub"

              </a>

              <a
                href="https://github.com/mint-lang/mint/releases"
                target="_blank">

                TablerIcons.GIT_PULL_REQUEST
                "Releases"

              </a>
            </div>

            <div::column>
              <strong>"Community & Social"</strong>

              <a
                href="https://discord.gg/NXFUJs2"
                target="_blank">

                TablerIcons.BRAND_DISCORD
                "Discord"

              </a>

              <a href="/blog">
                TablerIcons.ARTICLE
                "Blog"
              </a>
            </div>
          </div>
        </div>
      </div>
    }
  }
}
