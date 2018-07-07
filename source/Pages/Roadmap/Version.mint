component Pages.Roadmap.Version {
  property children : Array(Html) = []
  property version : String = ""

  style title {
    border-bottom: 2px solid #EEE;
    padding-bottom: 5px;
    margin-bottom: 15px;
    font-family: Amiko;
    margin-top: 40px;
    font-size: 24px;
    color: #222;
  }

  style features {
    & > * + * {
      margin-top: 20px;
    }
  }

  fun render : Html {
    <div>
      <div::title>
        <{ version }>
      </div>

      <div::features>
        <{ children }>
      </div>
    </div>
  }
}
