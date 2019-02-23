/* The home page. */
component Pages.Home {
  style hero {
    background: url(hero.png);
    justify-content: center;
    flex-direction: column;
    align-items: center;
    display: flex;
    height: 80vh;

    @media (max-width: 600px) {
      padding: 50px 20px;
      height: auto;
    }
  }

  style slogan {
    font-weight: normal;
    font-size: 18px;
    opacity: 0.75;
    margin: 0;

    @media (max-width: 600px) {
      margin-top: 10px;
      font-size: 13px;
    }
  }

  style buttons {
    margin-top: 30px;
    display: flex;

    @media (max-width: 600px) {
      flex-direction: column;
    }
  }

  style separator {
    @media (min-width: 600px) {
      margin-left: 30px;
    }

    @media (max-width: 600px) {
      margin-top: 15px;
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

  style compiles {
    margin-bottom: 20px;
    text-align: center;
    font-style: italic;
    margin-top: 10px;
    opacity: 0.5;
  }

  fun componentDidMount : Promise(Never, Void) {
    Showcase.Store.setActive("store")
  }

  /* Renders the page. */
  fun render : Html {
    <div::base>
      <div::hero>
        <div::logo>
          <Logo
            mobileSize={60}
            size={180}/>

          <h1::h1>
            "MINT"
          </h1>
        </div>

        <h2::slogan>
          "A refreshing language for the front-end web."
        </h2>

        <div::compiles>
          "Mint is a programming language that compiles to JavaScript."
        </div>

        <div::buttons>
          <Button href="/try">
            "Try"
          </Button>

          <div::separator/>

          <Button href="/install">
            "Install"
          </Button>

          <div::separator/>

          <Button
            href="https://guide.mint-lang.com"
            rel="noreferrer"
            target="_blank">

            "Learn"

          </Button>
        </div>
      </div>

      <Showcase/>
      <Features/>
      <Github/>
    </div>
  }
}
