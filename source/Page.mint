component Page {
  property children : Array(Html) = []

  style base {
    max-width: 1040px;
    margin: 0 auto;
    width: 100%;
    color: #444;

    padding: 50px 20px;
    padding-bottom: 100px;
  }

  fun render : Html {
    <div::base>
      <{ children }>
    </div>
  }
}
