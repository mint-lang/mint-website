component Body {
  connect Application exposing { isWide }

  /* The snippet to display. */
  property children : Array(Html) = []

  /* Styles for the root element. */
  style root {
    font-family: 'Noto Sans';
    font-weight: 300;

    /*
    background-image: url(#{@asset(../../assets/bottom-center.jpg)}),
                          url(#{@asset(../../assets/bottom-right.jpg)}),
                          url(#{@asset(../../assets/bottom-left.jpg)}),
                          url(#{@asset(../../assets/top-center.jpg)}),
                          url(#{@asset(../../assets/top-right.jpg)}),
                          url(#{@asset(../../assets/top-left.jpg)});
    */
    background-position: 50% 100%, calc(100% + 15px) 100%, -20px 100%,
                         50% 0, calc(100% + 15px) 0, -20px 0;

    background-repeat: no-repeat;
    background-color: white;

    box-sizing: border-box;
    position: relative;
    min-height: 100vh;
    color: #333;
    padding: 0;
    margin: 0;

    @keyframes swing {
      0%,
      100% {
        transform: rotate(-5deg);
      }

      50% {
        transform: rotate(5deg);
      }
    }

    @keyframes swing-reverse {
      0%,
      100% {
        transform: rotate(5deg);
      }

      50% {
        transform: rotate(-5deg);
      }
    }

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
    position: relative;
    z-index: 10;

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

  style leaves {
    position: absolute;
    overflow: hidden;
    bottom: 0;
    right: 0;
    left: 0;
    top: 0;
  }

  style leaf {
    animation-timing-function: cubic-bezier(0.65, 0, 0.35, 1);
    animation-iteration-count: infinite;
    animation-duration: 10s;
    position: absolute;
  }

  style top-center {
    background-image: url(#{@asset(../../assets/top-center.jpg)});
    left: calc(50% - 200px);
    height: 66px;
    width: 400px;
    top: 0;
  }

  style top-left {
    background-image: url(#{@asset(../../assets/top-left.jpg)});
    transform-origin: 80px 0;
    animation-name: swing;
    height: 100px;
    width: 260px;
    left: -15px;
    top: -10px;
  }

  style top-right {
    background-image: url(#{@asset(../../assets/top-right.jpg)});
    animation-name: swing-reverse;
    transform-origin: 115px 0;
    height: 159px;
    width: 200px;
    right: -15px;
    top: -10px;
  }

  style bottom-center {
    background-image: url(#{@asset(../../assets/bottom-center.jpg)});
    left: calc(50% - 200px);
    height: 66px;
    width: 400px;
    bottom: 0;
  }

  style bottom-right {
    background-image: url(#{@asset(../../assets/bottom-right.jpg)});
    animation-name: swing-reverse;
    transform-origin: 140px 100px;
    height: 100px;
    bottom: -10px;
    width: 260px;
    right: -15px;
  }

  style bottom-left {
    background-image: url(#{@asset(../../assets/bottom-left.jpg)});
    animation-name: swing-reverse;
    transform-origin: 20px 159px;
    height: 159px;
    bottom: -10px;
    width: 200px;
    left: -15px;
  }

  /* Renders the component. */
  fun render : Html {
    <div::root>
      <div::leaves>
        <div::leaf::bottom-center/>
        <div::leaf::bottom-right/>
        <div::leaf::bottom-left/>

        <div::leaf::top-center/>
        <div::leaf::top-right/>
        <div::leaf::top-left/>
      </div>

      <Header/>

      <div::wrapper>
        children
      </div>

      <Footer/>
    </div>
  }
}
