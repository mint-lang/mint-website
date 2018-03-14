component Showcase.Block {
  property children : Array(Html) = []
  property openingChar : String = " {"
  property closingChar : String = "}"
  property line : String = ""

  style base {
    border-radius: 2px;
    cursor: pointer;
    padding: 0 5px;
  }

  style content {
    padding-left: 20px;
  }

  fun render : Html {
    <div::base>
      <div>
        <{ line + openingChar }>
      </div>

      <div::content>
        <{ children }>
      </div>

      <{ closingChar }>
    </div>
  }
}
