component Home {
  connect Ui exposing { theme }

  style hero {
    justify-content: center;
    flex-direction: column;
    align-items: center;
    display: flex;
    height: 500px;

    @media (max-width: 600px) {
      height: 300px;
    }
  }

  style slogan {
    font-weight: normal;
    margin-top: 20px;
    font-size: 18px;
    color: #666;

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

  fun render : Html {
    <div::base>
      <div::hero>
        <Logo
          fill={theme.colors.primary.background}
          mobileHeight={60}
          mobileWidth={250}
          textFill="#222"/>

        <h2::slogan>
          <{ "A refreshing language for the front-end web." }>
        </h2>

        <div::buttons>
          <a::link href="/install">
            <Ui.Button
              size={22}
              label="Install"/>
          </a>

          <a::link
            href="https://guide.mint-lang.com"
            target="_blank">

            <Ui.Button
              size={22}
              type="secondary"
              label="Learn"/>

          </a>
        </div>
      </div>

      <Showcase/>

      <CallToAction/>
    </div>
  }
}
