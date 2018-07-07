/* A block component for the showcase. */
component Showcase.Block {
  /* The children to render. */
  property children : Array(Html) = []

  /* The opening character of the block. */
  property openingChar : String = " {"

  /* The closing character of the block. */
  property closingChar : String = "}"

  /* The line content. */
  property line : String = ""

  style base {
    border-radius: 2px;
    cursor: pointer;
    padding: 0 5px;
  }

  style content {
    padding-left: 20px;
  }

  /* Renders the block. */
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
