component Header {
  connect Ui exposing { theme }

  style base {
    background: #222;
    color: #EEE;
  }

  style wrapper {
    align-items: center;
    max-width: 1040px;
    padding: 0 20px;
    margin: 0 auto;
    display: flex;
    height: 50px;
  }

  style desktop {
    align-items: center;
    display: none;

    @media (min-width: 600px) {
      display: flex;
    }
  }

  style link {
    text-transform: uppercase;
    text-decoration: none;
    font-weight: bold;
    font-size: 14px;
    color: inherit;
  }

  fun render : Html {
    <div::base>
      <div::wrapper>
        <Ui.Toolbar.Title href="/">
          <Logo
            fill={theme.colors.primary.background}
            mobileHeight={20}
            mobileWidth={82}
            textFill="#FFF"
            height={20}
            width={82}/>
        </Ui.Toolbar.Title>

        <Ui.Toolbar.Spacer/>

        <div::desktop>
          <a::link href="/install">
            <{ "Install" }>
          </a>

          <Ui.Toolbar.Separator/>

          <a::link
            href="https://guide.mint-lang.com"
            target="_blank">

            <{ "Learn" }>

          </a>

          <Ui.Toolbar.Separator/>

          <a::link href="/examples">
            <{ "Examples" }>
          </a>

          <Ui.Toolbar.Separator/>

          <a::link href="/roadmap">
            <{ "Roadmap" }>
          </a>
        </div>
      </div>
    </div>
  }
}
