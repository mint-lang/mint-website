async component Content {
  /* The contents. */
  property children : Array(Html) = []

  property instrument : Bool = false

  use Provider.Mutation {
    changes: update,
    element: root
  }

  style root {
    line-height: 1.5;
    font-size: 18px;

    h1 {
      border-bottom: 2px dotted #BBB;
      font-family: Courgette;
      font-size: 40px;
    }

    h3 {
      margin-top: 40px;
    }

    h2 {
      align-items: center;
      display: flex;

      position: relative;
      margin-bottom: 0;
      margin-top: 50px;

      font-family: Courgette;
      font-size: 32px;

      &:after {
        border-top: 2px dotted #BBB;
        margin-left: 20px;
        margin-top: 20px;
        flex: 1;

        if !instrument {
          content: "";
        }
      }

      > svg {
        --tabler-stroke-width: 1.5;

        margin-right: 10px;
        flex: 0 0 auto;
        height: auto;
        width: 32px;
      }
    }

    li + li {
      margin-top: 10px;
    }

    li p {
      margin: 0.5em 0;
    }

    blockquote {
      border-left: 4px solid #666;
      font-style: italic;
      padding-left: 1em;
      margin-left: 0;

      svg:first-child {
        --tabler-stroke-width: 2;
        vertical-align: middle;
        position: relative;
        height: 1em;
        width: 1em;
        top: -1px;
      }
    }

    :not(pre) > code {
      border: 1px solid #E3E3E3;
      padding: 3px 5px 1px 5px;
      background: #FEFEFE;
      font-size: 16px;
    }

    pre {
      overflow: auto;
      border: 1px solid #E3E3E3;
      background: #FCFCFC;
      font-size: 16px;

      code {
        display: block;
        padding: 15px;
        max-width: 0;

        .comment {
          opacity: 0.5;
        }

        .regexp {
          color: darkorange;
        }

        .number {
          color: crimson;
        }

        .string {
          color: seagreen;
        }

        .namespace {
          color: orangered;
        }

        .type {
          color: royalblue;
        }

        .keyword {
          color: darkmagenta;
        }
      }
    }

    a:not([name]) {
      display: inline-block;
      color: seagreen;

      &:focus-visible {
        outline: 2px solid #333;
        outline-offset: 3px;
      }

      svg {
        vertical-align: middle;
        --tabler-stroke-width: 2;

        position: relative;
        margin-right: 5px;
        height: 20px;
        width: 20px;
      }
    }
  }

  style wrapper {
    > *:first-child {
      margin-top: 0;
    }

    > *:last-child {
      margin-bottom: 0;
    }

    > h1 > a,
    > h2 > a {
      text-decoration: none;
      color: inherit;

      &:first-child h1,
      &:first-child h2 {
        margin-top: 0;
      }

      &:focus-visible {
        outline: 2px solid #333;
        outline-offset: 3px;
      }

      &:hover {
        text-decoration: underline;
        color: seagreen;
      }
    }
  }

  style icon {
    display: none;
  }

  fun update {
    if let Just(element) = root {
      if let Just(icon) = icon {
        if let Just(external) = external {
          for link of Dom.getElementsBySelector(element, "a") {
            `
            (() => {
              if (#{link}.parentElement.tagName == "H2") { return }
              if (#{link}.parentElement.tagName == "H1") { return }

              if (this.processed == undefined) { this.processed = new Set }
              if (this.processed.has(#{link})) { return }
              this.processed.add(#{link});

              if (!#{link}.firstChildElement) {
                if (#{link}.href.startsWith(window.location.origin)) {
                  #{link}.prepend(#{icon}.firstElementChild.cloneNode(true))
                } else {
                  #{link}.target = "_blank"
                  #{link}.prepend(#{external}.firstElementChild.cloneNode(true))
                  #{link}.firstElementChild.style = "position:relative;top:-1px"
                }
              }
            })()
            `
          }
        }
      }

      if instrument {
        for h2 of Dom.getElementsBySelector(element, "h1, h2, h3") {
          `
        (() => {
          if (this.processed == undefined) { this.processed = new Set }
          if (this.processed.has(#{h2})) { return }
          this.processed.add(#{h2});

          const anchor = document.createElement("a")
          anchor.name = #{h2}.textContent.toLowerCase().replace(/\s/g, '_');
          anchor.href = "#" + anchor.name;

          for (let child of #{h2}.childNodes) {
            anchor.appendChild(child)
          }

          #{h2}.appendChild(anchor)
        })()
        `
        }
      }
    }

    next { }
  }

  fun render : Html {
    <div::root as root>
      <div::icon as external>
        TablerIcons.TablerIcons.EXTERNAL_LINK
      </div>

      <div::icon as icon>
        TablerIcons.LINK
      </div>

      <div::wrapper>
        children
      </div>
    </div>
  }
}
