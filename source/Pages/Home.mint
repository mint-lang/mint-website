component Home {
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
      margin-left: 30px;
    }
  }

  style base {
    color: #333;
  }

  style logo {
    flex-direction: column;
    align-items: center;
    display: flex;
  }

  style h1 {
    font-family: Josefin Sans;
    font-weight: 300;
    font-size: 70px;
    line-height: 1;

    margin: 0;
    margin-top: 30px;
  }

  fun render : Html {
    <div::base>
      <div::hero>
        <div::logo>
          <Logo
            size={180}
            mobileSize={60}/>

          <h1::h1>
            <{ "MINT" }>
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
      <Github/>
    </div>
  }
}
