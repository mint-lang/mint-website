component Page {
  property children : Array(Html) = []

  style base {
    padding: 50px 20px;
    max-width: 1040px;
    margin: 0 auto;
    width: 100%;
  }

  fun render : Html {
    <div::base>
      <{ children }>
    </div>
  }
}
