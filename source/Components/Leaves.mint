component Leaves {
  connect Application exposing { isMobile }

  // Styles for the root element.
  style root {
    position: absolute;
    overflow: hidden;
    bottom: 0;
    right: 0;
    left: 0;
    top: 0;

    @keyframes swing {
      0%, 100% {
        transform: rotate(-5deg);
      }

      50% {
        transform: rotate(5deg);
      }
    }

    @keyframes swing-reverse {
      0%, 100% {
        transform: rotate(5deg);
      }

      50% {
        transform: rotate(-5deg);
      }
    }
  }

  // Styles for a leaf.
  style leaf {
    animation-timing-function: cubic-bezier(0.65, 0, 0.35, 1);
    animation-iteration-count: infinite;
    animation-fill-mode: both;
    animation-duration: 10s;
    position: absolute;
  }

  // Styles for the top-center leaf.
  style top-center {
    background-image: url(#{@asset(../../assets/top-center.png)});
    left: calc(50% - 200px);
    height: 66px;
    width: 400px;
    top: 0;
  }

  // Styles for the top-left leaf.
  style top-left {
    background-image: url(#{@asset(../../assets/top-left.png)});
    transform-origin: 80px 0;
    animation-delay: 3s;
    height: 100px;
    width: 260px;
    left: -15px;
    top: -10px;

    if isMobile {
      animation-name: initial;
    } else {
      animation-name: swing;
    }
  }

  // Styles for the top-right leaf.
  style top-right {
    background-image: url(#{@asset(../../assets/top-right.png)});
    transform-origin: 115px 0;
    height: 159px;
    width: 200px;
    right: -15px;
    top: -10px;

    if isMobile {
      animation-name: initial;
    } else {
      animation-name: swing-reverse;
    }
  }

  // Styles for the bottom-center leaf.
  style bottom-center {
    background-image: url(#{@asset(../../assets/bottom-center.png)});
    left: calc(50% - 200px);
    height: 66px;
    width: 400px;
    bottom: 0;
  }

  // Styles for the bottom-right leaf.
  style bottom-right {
    background-image: url(#{@asset(../../assets/bottom-right.png)});
    transform-origin: 140px 100px;
    animation-delay: 3s;
    height: 100px;
    bottom: -10px;
    width: 260px;
    right: -15px;

    if isMobile {
      animation-name: initial;
    } else {
      animation-name: swing-reverse;
    }
  }

  // Styles for the bottom-left leaf.
  style bottom-left {
    background-image: url(#{@asset(../../assets/bottom-left.png)});
    transform-origin: 20px 159px;
    height: 159px;
    bottom: -10px;
    width: 200px;
    left: -15px;

    if isMobile {
      animation-name: initial;
    } else {
      animation-name: swing;
    }
  }

  // Renders the component.
  fun render : Html {
    <div::root>
      <div::leaf::bottom-center/>
      <div::leaf::bottom-right/>
      <div::leaf::bottom-left/>
      <div::leaf::top-center/>
      <div::leaf::top-right/>
      <div::leaf::top-left/>
    </div>
  }
}
