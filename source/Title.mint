component Title {
  property children : Array(Html) = []

  style base {
    font-family: Amiko;
    font-weight: 600;
    font-size: 32px;
    line-height: 1;
    color: #222;
  }

  fun render : Html {
    <div::base>
      <{ children }>
    </div>
  }
}
