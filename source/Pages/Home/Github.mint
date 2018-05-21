component Pages.Home.Github {
  style base {
    flex-direction: column;
    align-items: center;
    display: flex;
    padding: 80px 0;
    padding-bottom: 140px;
  }

  style image {
    width: 300px;
  }

  style title {
    font-family: Josefin Sans;
    text-transform: uppercase;
    font-weight: 600;
    margin-top: 30px;
    font-size: 26px;
  }

  style text {
    margin-bottom: 50px;
    text-align: center;
    line-height: 1.5em;
    margin-top: 20px;
    font-size: 18px;
  }

  fun render : Html {
    <div::base>
      <img::image
        src={
          "https://octodex.github.com/images/daftpunktocat-thomas.g" \
          "if"
        }/>

      <div::title>
        <{ "Fork the project on GitHub" }>
      </div>

      <div::text>
        <b>
          <{ "Mint" }>
        </b>

        <{ " is open source! " }>
        <br/>

        <{
          "It’s hosted, developed, and maintained on GitHub by folk" \
          "s like you."
        }>
      </div>

      <Button
        target="_blank"
        href="">

        <{ "Contribute on Github" }>

      </Button>
    </div>
  }
}
