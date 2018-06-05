component Button {
  property children : Array(Html) = []
  property target : String = ""
  property href : String = ""

  style base {
    text-transform: uppercase;
    border: 2px solid #2f9e59;
    text-decoration: none;
    border-radius: 30px;
    text-align: center;
    font-weight: 600;
    font-size: 20px;
    line-height: 1;
    color: #2f9e59;

    padding: 15px 40px;
    padding-bottom: 16px;

    &:hover {
      background: #2f9e59;
      color: #FFF;
    }

    @media (max-width: 600px) {
      padding: 15px 30px;
    }
  }

  fun render : Html {
    <a::base
      target={target}
      href={href}>

      <{ children }>

    </a>
  }
}
