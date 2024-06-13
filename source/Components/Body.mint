component Body {
  connect Application exposing { isMobile, isDarkMode, isWide, isTablet }

  // The children to display.
  property children : Array(Html) = []

  // Styles for the root element.
  style root {
    background-color: var(--background-color);
    color: var(--text-color);
    position: relative;

    font-family: 'Noto Sans';
    font-weight: 300;

    *:not(iframe):focus-visible {
      outline: 2px solid var(--text-color);
      outline-offset: 4px;
    }

    if isDarkMode {
      --line-number-color: #444444;
      --background-color: #1E1E1E;
      --blur-color-2: #1E1E1ECC;
      --blur-color: #1E1E1E80;
      --border-color: #333333;
      --input-color: #222222;
      --text-color: #DDDDDD;

      --color-royalblue: cornflowerblue;
      --color-indianred: lightcoral;
      --color-darkmagenta: orchid;
      --color-darkorange: orange;
      --color-mintgreen: #36A65D;
      --color-crimson: tomato;
      --color-comment: gray;
    } else {
      --line-number-color: #CCCCCC;
      --background-color: #FFFFFF;
      --blur-color-2: #FFFFFFCC;
      --blur-color: #FFFFFF80;
      --border-color: #EAEAEA;
      --input-color: #FEFEFE;
      --text-color: #333333;

      --color-darkmagenta: darkmagenta;
      --color-darkorange: darkorange;
      --color-royalblue: royalblue;
      --color-indianred: indianred;
      --color-mintgreen: #277944;
      --color-comment: darkgray;
      --color-crimson: crimson;
    }

    if isMobile {
      min-height: auto;
    } else {
      min-height: 100vh;
    }

    if isWide {
      grid-template-rows: auto 1fr;
      display: grid;
      height: 100vh;
    } else {
      display: block;
    }
  }

  // Styles for the wrapper element.
  style wrapper {
    backdrop-filter: blur(3px);
    position: relative;
    z-index: 1;

    if isWide && !isMobile {
      min-height: 0;
      display: grid;
    } else {
      flex-direction: column;
      display: flex;

      max-width: 1280px;
      margin: 0 auto;
    }

    if isMobile || (isTablet && !isWide) {
      padding: 20px;
      margin: 0;
    } else if !(isWide && !isMobile) {
      padding: 5vh 20px 20px 20px;
      min-height: 60vh;
    }
  }

  // Renders the component.
  fun render : Html {
    <div::root>
      <MobileMenu/>
      <Leaves/>
      <Header/>

      <div::wrapper>
        children
      </div>

      <Footer/>
    </div>
  }
}
