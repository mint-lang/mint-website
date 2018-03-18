component Footer {
  style base {
    background: #222;
    margin-top: auto;
    height: 200px;
    color: #BBB;
  }

  style wrapper {
    padding: 30px 20px;
    max-width: 1040px;
    margin: 0 auto;
    display: flex;
  }

  style column {
    margin-right: 50px;
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
            href="https://mint-lang.slack.com"
            target="_blank"
            label="Slack"/>
        </div>
      </div>
    </div>
  }
}
