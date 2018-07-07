component Header {
  style base {
    border-bottom: 2px solid #29894e;
    background: #2f9e59;
    color: #FFF;
  }

  style spacer {
    flex: 1;
  }

  style separator {
    border-left: 1px solid rgba(255, 255, 255, 0.2);
    margin: 0 15px;
    height: 30px;
  }

  style wrapper {
    align-items: center;
    max-width: 1040px;
    padding: 0 20px;
    margin: 0 auto;
    display: flex;
    height: 50px;
  }

  style desktop {
    align-items: center;
    display: none;

    @media (min-width: 600px) {
      display: flex;
    }
  }

  style brand {
    font-family: Josefin Sans;
    text-decoration: none;
    align-items: center;
    font-weight: 400;
    font-size: 20px;
    display: flex;
    color: #FFF;

    & > div {
      margin-left: 5px;
      height: 15px;
    }
  }

  style link {
    text-transform: uppercase;
    font-family: Josefin Sans;
    text-decoration: none;
    font-weight: 400;
    font-size: 14px;
    color: inherit;
    height: 10px;
  }

  fun render : Html {
    <div::base>
      <div::wrapper>
        <a::brand href="/">
          <Logo
            mobileSize={20}
            invert={true}
            size={20}/>

          <div>
            <{ "MINT" }>
          </div>
        </a>

        <div::spacer/>

        <div::desktop>
          <a::link href="/try">
            <{ "Try" }>
          </a>

          <div::separator/>

          <a::link href="/install">
            <{ "Install" }>
          </a>

          <div::separator/>

          <a::link
            href="https://guide.mint-lang.com"
            target="_blank">

            <{ "Learn" }>

          </a>

          <div::separator/>

          <a::link href="/examples">
            <{ "Examples" }>
          </a>

          <div::separator/>

          <a::link href="/roadmap">
            <{ "Roadmap" }>
          </a>
        </div>
      </div>
    </div>
  }
}
