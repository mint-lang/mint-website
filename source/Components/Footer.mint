/* The footer component. */
component Footer {
  style base {
    min-height: 200px;
    background: #222;
    margin-top: auto;
    color: #BBB;
  }

  style wrapper {
    grid-template-columns: repeat(auto-fill, 220px);
    grid-gap: 20px 50px;
    display: grid;

    padding: 30px 20px;
    max-width: 1040px;
    margin: 0 auto;
  }

  style column {
    width: 200px;
  }

  style link {
    text-decoration: none;
    margin-top: 5px;
    display: block;
    color: inherit;
  }

  style title {
    border-bottom: 1px dashed #444;
    padding-bottom: 5px;
    margin-bottom: 10px;
    font-weight: 600;
    color: #EEE;
  }

  /* Renders the footer. */
  fun render : Html {
    <div::base>
      <div::wrapper>
        <div::column>
          <div::title>
            "Source"
          </div>

          <a::link
            href="https://github.com/mint-lang/mint"
            rel="noreferrer"
            target="_blank">

            "Github Repository"

          </a>

          <a::link
            href="https://github.com/mint-lang/mint/releases"
            rel="noreferrer"
            target="_blank">

            "Releases / Changelog"

          </a>
        </div>

        <div::column>
          <div::title>
            "Community"
          </div>

          <a::link
            href="https://gitter.im/mint-lang/Lobby"
            rel="noreferrer"
            target="_blank">

            "Gitter"

          </a>

          <a::link
            href="https://spectrum.chat/mint-lang"
            rel="noreferrer"
            target="_blank">

            "Spectrum"

          </a>
        </div>

        <div::column>
          <div::title>
            "Social"
          </div>

          <a::link
            href="https://twitter.com/mint_lang"
            rel="noreferrer"
            target="_blank">

            "Twitter"

          </a>
        </div>
      </div>
    </div>
  }
}
