component Home.CallToAction {
  property theme : Ui.Theme = Ui.defaultTheme()
  property children : Array(Html) = []
  property text : String = ""

  style base {
    background-image: url(/cta.png);
    background-size: 54px 54px;
    flex-direction: column;
    align-items: center;
    padding: 75px 0;
    display: flex;
    color: #FFF;
  }

  style text {
    margin-bottom: 20px;
    font-size: 30px;
  }

  fun render : Html {
    <div::base>
      <div::text>
        <{ text }>
      </div>

      <{ children }>
    </div>
  }
}
