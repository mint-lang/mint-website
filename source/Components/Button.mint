/* A button component. */
component Button {
  /* The children to render. */
  property children : Array(Html) = []

  /* The links target. */
  property target : String = ""

  /* The links URL. */
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

  /* Renders the component. */
  fun render : Html {
    <a::base
      target={target}
      href={href}>

      <{ children }>

    </a>
  }
}
