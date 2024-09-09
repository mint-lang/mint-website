component Hero {
  connect Application exposing { isMobile, isTablet }

  // Styles for the root element.
  style root {
    grid-template-columns: 1fr auto;
    align-items: center;
    grid-gap: 100px;
    display: grid;

    if isMobile {
      grid-template-columns: 1fr;
      padding-top: 15px;
      grid-gap: 15px;
    } else if isTablet {
      grid-gap: 50px;
    }

    p {
      line-height: 1.5;
      font-size: 20px;
      margin: 30px 0;

      if isMobile {
        font-size: 16px;
        margin: 20px 0;
      } else if isTablet {
        font-size: 18px;
      }
    }
  }

  // Styles for the logo.
  style logo {
    margin-bottom: 30px;
    display: block;
    height: auto;

    svg:first-child {
      margin-right: 15px;
      height: 65px;
      width: 65px;

      position: relative;
      top: 6px;

      if isMobile {
        margin-right: 10px;
        height: 50px;
        width: 50px;
      }
    }

    svg:last-child {
      width: 140px;
      height: 55px;

      if isMobile {
        width: 125px;
        height: 40px;
      }
    }

    if isMobile {
      margin-bottom: 20px;
    }
  }

  // Styles for the alternative call to action.
  style alternative {
    margin-top: 30px;
    display: block;
    opacity: 0.75;

    text-decoration: none;
    font-size: 16px;
    color: inherit;

    if isMobile {
      margin-top: 20px;
      font-size: 14px;
    }

    &:hover {
      text-decoration: underline;
    }

    svg {
      vertical-align: middle;
      margin-left: 4px;
      height: 16px;
      width: 16px;
    }
  }

  // Stylese for the button.
  style button {
    background-image: radial-gradient(farthest-corner at center top,
                      rgba(255,255,255,0.25),
                      rgba(255,255,255,0));

    outline: 1px solid #32975459;
    background-color: #329754;
    outline-offset: 2px;

    border-radius: 4px;
    padding: 12px 25px;
    border: 0;

    text-shadow: 0 0 2px #329754;
    font-family: 'Noto Sans';
    text-decoration: none;
    font-weight: 400;
    font-size: 18px;
    color: white;

    grid-template-columns: auto 1fr;
    display: inline-grid;
    gap: 8px;

    if isMobile {
      justify-content: center;
      display: flex;
    }

    svg {
      --tabler-stroke-width: 1.5;

      height: 24px;
      width: 24px;
    }

    &:hover {
      outline-color: #329754;
      cursor: pointer;
    }
  }

  // Styles for the title.
  style title {
    font-weight: normal;
    font-family: Forum;
    line-height: 1.25;
    font-size: 38px;

    margin: 0;
    margin-top: 0.5em;

    if isMobile {
      margin-top: 0.25em;
      font-size: 24px;
    } else if isTablet {
      font-size: 28px;
    }
  }

  // Styles for a divider.
  style divider {
    border-bottom: 1px solid var(--border-color);
  }

  // Renders the component.
  fun render : Html {
    <div::root>
      <div>
        <div::logo>
          @svg(../../assets/brand-book/logomark-animated.svg)
          @svg(../../assets/brand-book/logotype.svg)
        </div>

        <h1::title>
          "The programming language for writing single page applications"
        </h1>

        <<#MARKDOWN
        Mint has all the tools you need to write **error free**, **easily
        readable** and **maintainable** applications in **record time**.
        MARKDOWN

        <a::button href="/tutorial">
          "Tutorial"
          TablerIcons.ARROW_BIG_RIGHT_LINES
        </a>

        <a::alternative href="/guides/getting-started">
          "or check out the "

          <b>"getting started"</b>

          " guide"
          TablerIcons.ARROW_RIGHT
        </a>
      </div>

      if isMobile {
        <div::divider/>
      }

      <Content
        preMinWidth={
          if isTablet {
            "400px"
          } else {
            "600px"
          }
        }
      >
        <<#MARKDOWN(highlight)
        ```mint
        component Counter {
          state counter = 0

          fun increment {
            next { counter: counter + 1 }
          }

          fun decrement {
            next { counter: counter - 1 }
          }

          fun render {
            <div>
              <button onClick={decrement}>
                "Decrement"
              </button>

              <span>
                Number.toString(counter)
              </span>

              <button onClick={increment}>
                "Increment"
              </button>
            </div>
          }
        }
        ```
        MARKDOWN
      </Content>
    </div>
  }
}
