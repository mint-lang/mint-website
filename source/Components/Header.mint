/* The header component. */
component Header {
  connect Application exposing { toggleMenu, closeMenu, menu }

  use Provider.Scroll { scrolls = (event : Html.Event) : Promise(Never, Void) { closeMenu() } }

  style base {
    border-bottom: 2px solid #29894e;
    background: #2f9e59;
    position: relative;
    color: #FFF;
    z-index: 1;
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

  style mobile {
    display: none;
    height: 24px;

    @media (max-width: 599px) {
      display: block;
    }

    svg {
      fill: currentColor;
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

    > div {
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

  style mobile-menu {
    box-shadow: 0 0 30px rgba(0,0,0,0.5);
    border-bottom: 2px solid #29894e;
    background: #2f9e59;

    transform: #{transform};
    position: absolute;
    transition: 320ms;
    padding: 0 20px;
    top: 52px;
    right: 0;
    left: 0;
  }

  style mobile-link {
    text-decoration: none;
    font-size: 18px;
    padding: 15px 0;
    display: block;
    color: white;

    + * {
      border-top: 1px solid rgba(255, 255, 255, 0.2);
    }
  }

  get transform : String {
    if (menu) {
      "translateY(0)"
    } else {
      "translateY(-120%)"
    }
  }

  /* Renders the header. */
  fun render : Array(Html) {
    [
      <div::base>
        <div::wrapper>
          <a::brand href="/">
            <Logo
              mobileSize={20}
              invert={true}
              size={20}/>

            <div>
              "MINT"
            </div>
          </a>

          <div::spacer/>

          <div::desktop>
            <a::link href="/try">
              "Try"
            </a>

            <div::separator/>

            <a::link href="/install">
              "Install"
            </a>

            <div::separator/>

            <a::link
              href="https://guide.mint-lang.com"
              rel="noreferrer"
              target="_blank">

              "Learn"

            </a>

            <div::separator/>

            <a::link href="/examples">
              "Examples"
            </a>

            <div::separator/>

            <a::link href="/roadmap">
              "Roadmap"
            </a>
          </div>

          <div::mobile onClick={(event : Html.Event) : Promise(Never, Void) { toggleMenu() }}>
            <{ Icons.navigation() }>
          </div>
        </div>
      </div>,
      <div::mobile-menu>
        <a::mobile-link href="/try">
          "Try"
        </a>

        <a::mobile-link href="/install">
          "Install"
        </a>

        <a::mobile-link
          href="https://guide.mint-lang.com"
          rel="noreferrer"
          target="_blank">

          "Learn"

        </a>

        <a::mobile-link href="/examples">
          "Examples"
        </a>

        <a::mobile-link href="/roadmap">
          "Roadmap"
        </a>
      </div>
    ]
  }
}
