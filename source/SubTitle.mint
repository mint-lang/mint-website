component SubTitle {
  property children : Array(Html) = []

  style base {
    margin: 10px 0;

    @media (max-width: 600px) {
      font-size: 14px;
    }
  }

  fun render : Html {
    <div::base>
      <{ children }>
    </div>
  }
}
