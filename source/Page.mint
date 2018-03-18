component Page {
  property children : Array(Html) = []

  style base {
    max-width: 1040px;
    margin: 0 auto;
    width: 100%;
    color: #444;

    padding: 50px 20px;
    padding-bottom: 100px;

    @media (max-width: 600px) {
      padding: 20px;
      padding-top: 25px;
    }
  }

  fun render : Html {
    <div::base>
      <{ children }>
    </div>
  }
}
