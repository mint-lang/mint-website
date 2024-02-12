component Body {
  connect Application exposing { page }

  /* The snippet to display. */
  property children : Array(Html) = []

  /* Styles for the root element. */
  style root {
    font-family: 'Noto Sans';
    font-weight: 300;

    background-image: url(#{@asset(../../assets/bottom0.jpg)}),
                      url(#{@asset(../../assets/bottom1.jpg)}),
                      url(#{@asset(../../assets/bottom2.jpg)}),
                      url(#{@asset(../../assets/top0.jpg)}),
                      url(#{@asset(../../assets/top1.jpg)}),
                      url(#{@asset(../../assets/top2.jpg)});

    background-position: calc(100% + 15px) 100%, -20px 100%, 50% 100%,
                         -20px 0, calc(100% + 15px) 0, 50% 0;

    background-repeat: no-repeat;
    background-color: white;

    box-sizing: border-box;
    min-height: 100vh;
    color: #333;
    padding: 0;
    margin: 0;

    *:focus-visible {
      outline: 2px solid #333;
      outline-offset: 4px;
    }
  }

  /* Styles for the wrapper element. */
  style wrapper {
    background: rgba(255, 255, 255, 0.5);
    backdrop-filter: blur(3px);
    margin: 0 auto;

    flex-direction: column;
    display: flex;

    case page {
      Page.Learn =>

      =>
        max-width: 1280px;
        padding-top: 5vh;
    }
  }

  /* Renders the component. */
  fun render : Html {
    <div::root>
      <Header/>

      <div::wrapper>
        children
      </div>

      case page {
        Page.Learn => <></>

        =>
          <Footer/>
      }
    </div>
  }
}
