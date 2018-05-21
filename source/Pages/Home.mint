component Home {
  connect Ui exposing { theme }

  style hero {
    background: url(hero.png);
    justify-content: center;
    flex-direction: column;
    align-items: center;
    display: flex;
    height: 80vh;

    @media (max-width: 600px) {
      height: 300px;
    }
  }

  style slogan {
    font-weight: normal;
    font-size: 18px;
    opacity: 0.75;

    margin: 0;
    margin-bottom: 20px;

    @media (max-width: 600px) {
      margin-top: 10px;
      font-size: 13px;
    }
  }

  style buttons {
    margin-top: 30px;

    & > * + * {
      margin-left: 15px;
    }
  }

  style link {
    text-decoration: none;
  }

  style base {
    color: #333;
  }

  style logo {
    flex-direction: column;
    align-items: center;
    display: flex;
  }

  style features {
    padding: 0 20px 50px 20px;
    max-width: 1040px;
    margin: 0 auto;

    & h3 {
      text-transform: uppercase;
      margin-bottom: 20px;
      margin-top: 50px;
      font-size: 26px;
    }
  }

  style h1 {
    font-family: Josefin Sans;
    line-height: 1;
    font-weight: 300;
    font-size: 80px;
    margin: 0;
    margin-top: 20px;
  }

  fun render : Html {
    <div::base>
      <div::hero>
        <div::logo>
          <Logo
            size={180}
            mobileSize={60}/>

          <h1::h1>
            <{ "mint" }>
          </h1>
        </div>

        <h2::slogan>
          <{ "A refreshing language for the front-end web." }>
        </h2>

        <div::buttons>
          <Button href="/install">
            <{ "Install" }>
          </Button>

          <Button
            href="https://guide.mint-lang.com"
            target="_blank">

            <{ "Learn" }>

          </Button>
        </div>
      </div>

      <Showcase/>

      <Pages.Home.Github/>
    </div>
  }
}
