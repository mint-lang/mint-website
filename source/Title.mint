component Title {
  property children : Array(Html) = []

  style base {
    font-family: Josefin Sans;
    text-transform: uppercase;
    font-weight: 600;
    font-size: 26px;
    line-height: 1;
    color: #222;

    @media (max-width: 600px) {
      font-size: 24px;
    }
  }

  fun render : Html {
    <div::base>
      <{ children }>
    </div>
  }
}
