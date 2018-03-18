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

    & > a {
      text-transform: uppercase;
      font-weight: bold;
      font-size: 14px;
    }

    & > a,
    & > a:focus,
    & > a:hover {
      color: inherit;
    }

    @media (min-width: 600px) {
      display: flex;
    }
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
          <Ui.Link
            href="/install"
            label="Install"/>

          <Ui.Toolbar.Separator/>

          <Ui.Link
            href="https://guide.mint-lang.com"
            target="_blank"
            label="Learn"/>

          <Ui.Toolbar.Separator/>

          <Ui.Link
            href="/examples"
            label="Examples"/>

          <Ui.Toolbar.Separator/>

          <Ui.Link
            href="/roadmap"
            label="Roadmap"/>
        </div>
      </div>
    </div>
  }
}
