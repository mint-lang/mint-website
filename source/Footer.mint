component Footer {
  style base {
    min-height: 200px;
    background: #222;
    margin-top: auto;
    color: #BBB;
  }

  style wrapper {
    grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
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
    font-family: Amiko;
    font-weight: 600;
    color: #EEE;
  }

  fun render : Html {
    <div::base>
      <div::wrapper>
        <div::column>
          <div::title>
            <{ "Source" }>
          </div>

          <a::link
            href="https://github.com/mint-lang/mint"
            target="_blank">

            <{ "Github Repository" }>

          </a>

          <a::link
            href="https://github.com/mint-lang/mint/releases"
            target="_blank">

            <{ "Releases / Changelog" }>

          </a>
        </div>

        <div::column>
          <div::title>
            <{ "Community" }>
          </div>

          <a::link
            href="https://gitter.im/mint-lang/Lobby"
            target="_blank">

            <{ "Gitter" }>

          </a>
        </div>
      </div>
    </div>
  }
}
