component CallToAction {
  property children : Array(Html) = []
  property text : String = ""

  style base {
    background-image: url(/cta.png);
    background-size: 54px 54px;
    flex-direction: column;
    align-items: center;
    display: flex;
    color: #FFF;

    padding: 75px 0;
    padding-bottom: 90px;
  }

  style buttons {
    display: flex;

    & > a:hover {
      text-decoration: none;
    }

    & > * + * {
      margin-left: 15px;
    }
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
        <Ui.Link href="/install">
          <Ui.Button
            size={20}
            type="secondary"
            label="Install"/>
        </Ui.Link>

        <Ui.Link
          href="https://guide.mint-lang.com"
          target="_blank">

          <Ui.Button
            size={20}
            type="secondary"
            label="Learn"/>

        </Ui.Link>
      </div>
    </div>
  }
}
