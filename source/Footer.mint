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

    & > a {
      margin-top: 5px;
      display: block;
      color: inherit;
    }

    & > a:hover,
    & > a:focus {
      color: inherit;
    }
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

          <Ui.Link
            href="https://github.com/mint-lang/mint"
            label="Github Repository"
            target="_blank"/>

          <Ui.Link
            href="https://github.com/mint-lang/mint/releases"
            label="Releases / Changelog"
            target="_blank"/>
        </div>

        <div::column>
          <div::title>
            <{ "Community" }>
          </div>

          <Ui.Link
            href="https://gitter.im/mint-lang/Lobby"
            target="_blank"
            label="Gitter"/>
        </div>
      </div>
    </div>
  }
}
