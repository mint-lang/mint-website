component Body {
  connect Application exposing { isWide }

  /* The snippet to display. */
  property children : Array(Html) = []

  /* Styles for the root element. */
  style root {
    font-family: 'Noto Sans';
    font-weight: 300;

    background-image: url(#{@asset(../../assets/bottom-center.jpg)}),
                      url(#{@asset(../../assets/bottom-right.jpg)}),
                      url(#{@asset(../../assets/bottom-left.jpg)}),
                      url(#{@asset(../../assets/top-center.jpg)}),
                      url(#{@asset(../../assets/top-right.jpg)}),
                      url(#{@asset(../../assets/top-left.jpg)});

    background-position: 50% 100%, calc(100% + 15px) 100%, -20px 100%,
                         50% 0, calc(100% + 15px) 0, -20px 0;

    background-repeat: no-repeat;
    background-color: white;

    box-sizing: border-box;
    min-height: 100vh;
    color: #333;
    padding: 0;
    margin: 0;

    *:not(iframe):focus-visible {
      outline: 2px solid #333;
      outline-offset: 4px;
    }

    if isWide {
      grid-template-rows: auto 1fr;
      display: grid;
      height: 100vh;
    } else {
      display: block;
    }
  }

  /* Styles for the wrapper element. */
  style wrapper {
    background: rgba(255, 255, 255, 0.5);
    backdrop-filter: blur(3px);

    if isWide {
      min-height: 0;
      display: grid;
    } else {
      flex-direction: column;
      display: flex;

      max-width: 1280px;
      padding-top: 5vh;
      margin: 0 auto;
    }
  }

  /* Renders the component. */
  fun render : Html {
    <div::root>
      <Header/>

      <div::wrapper>
        children
      </div>

      <Footer/>
    </div>
  }
}
