component CallToAction {
  property children : Array(Html) = []
  property text : String = ""

  style base {
    background-color: #2f9e59;
    background-image: url(cta.png);
    flex-direction: column;
    align-items: center;
    display: flex;
    color: #FFF;

    padding: 75px 0;
    padding-bottom: 90px;
  }

  style buttons {
    display: flex;

    & > * + * {
      margin-left: 15px;
    }
  }

  style link {
    text-decoration: none;
  }

  style text {
    margin-bottom: 20px;
    font-size: 30px;
  }

  fun render : Html {
    <div::base>
      <div::text>
        <{ "Interested?" }>
      </div>

      <div::buttons>
        <a::link href="/install">
          <Ui.Button
            size={20}
            type="secondary"
            label="Install"/>
        </a>

        <a::link
          href="https://guide.mint-lang.com"
          target="_blank">

          <Ui.Button
            size={20}
            type="secondary"
            label="Learn"/>

        </a>
      </div>
    </div>
  }
}
