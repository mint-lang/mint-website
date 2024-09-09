component Content {
  connect Application exposing { isMobile }

  // The minimum with for <pre> tags.
  property preMinWidth : String = "auto"

  // The size of the text on mobile.
  property mobileFontSize : Number = 14

  // The contents to display.
  property children : Array(Html) = []

  // The size of the text.
  property fontSize : Number = 16

  // The raw HTML to render instead of the children.
  property raw : String = ""

  // Styles for the root element.
  style root {
    font-size: #{fontSize}px;
    line-height: 1.5;
    min-width: auto;

    if isMobile {
      font-size: #{mobileFontSize}px;
      min-width: 0;
    }

    > *:first-child {
      margin-top: 0;
    }

    > *:last-child {
      margin-bottom: 0;
    }

    h1, h2, h3 {
      font-weight: normal;
      font-family: Forum;
    }

    > h1, > h2, > h3 {
      > a {
        text-decoration: none;
        color: inherit;

        &:hover {
          color: var(--color-mintgreen);
          text-decoration: underline;
        }
      }
    }

    h2, h3 {
      align-items: center;
      position: relative;
      margin-bottom: 0;
      display: flex;

      // The line after the content.
      &:after {
        border-top: 1px solid var(--border-color);
        margin-top: 0.6em;
        margin-left: 1em;
        content: "";
        flex: 1;
      }
    }

    h1 {
      border-bottom: 3px double var(--border-color);
      font-size: 2.25em;
    }

    h2 {
      font-size: 1.75em;
      margin-top: 1em;

      :not(pre) code {
        font-weight: bold;
        font-size: 0.5em;
      }
    }

    h3 {
      margin-top: 1.25em;
      font-size: 1.25em;
    }

    hr {
      border: 0;
      border-bottom: 1px double var(--border-color);
    }

    ul, ol {
      padding-left: 1.5em;
    }

    li + li {
      margin-top: 0.25em;
    }

    li p {
      margin: 0.5em 0;
    }

    blockquote {
      border-left: 3px solid var(--border-color);
      font-style: italic;
      padding-left: 1em;
      margin-left: 0;
    }

    code {
      font-optical-sizing: auto;
      font-family: "Fira Code";
      font-weight: 400;
    }

    :not(pre) > code {
      border: 1px solid var(--border-color);
      border-radius: 3px;

      padding: 0.214em 0.375em 0.142em 0.375em;
      background: var(--input-color);
      font-size: 0.7777em;
    }

    pre:has(.language-bash) {
      border-left: 3px solid var(--border-color);
      padding-left: 1.5em;

      .line::before {
        display: none;
      }
    }

    pre {
      min-width: #{preMinWidth};
      font-size: 0.8888em;
      overflow: auto;

      if isMobile {
        min-width: 0;
      }

      code {
        display: block;
        min-width: 0;

        .line {
          counter-increment: snippet;
          position: relative;
          min-height: 1em;
          display: block;

          &::before {
            content: counter(snippet);

            border-right: 1px solid var(--border-color);
            color: var(--line-number-color);
            display: inline-block;
            padding-right: 0.75em;
            margin-right: 0.75em;
            text-align: right;
            width: 1.5em;

            if isMobile {
              content: none;
            }
          }
        }

        .keyword {
          color: var(--color-darkmagenta);
        }

        .regexp {
          color: var(--color-darkorange);
        }

        .namespace, .property {
          color: var(--color-indianred);
        }

        .type {
          color: var(--color-royalblue);
        }

        .string {
          color: var(--color-mintgreen);
        }

        .comment {
          color: var(--color-comment);
        }

        .number {
          color: var(--color-crimson);
        }
      }
    }

    img:not([class]) {
      border-radius: 5px;
      width: 100%;

      outline: 1px solid var(--border-color);
      outline-offset: 3px;
    }

    a:not([name]) {
      color: var(--color-mintgreen);

      &:has(> span:first-child > svg) {
        // This is for not breaking the icon before the link.
        display: inline-block;

        svg {
          --tabler-stroke-width: 1.5;

          vertical-align: middle;
          margin-right: 0.1em;
          position: relative;
          height: 1em;
          width: 1em;
        }
      }
    }

    table {
      border-collapse: collapse;
      font-size: 0.8em;
      width: 100%;

      thead {
        border-bottom: 2px solid var(--border-color);
      }

      tr:last-child td {
        border-bottom: 0;
      }

      th, td {
        border: 1px solid var(--border-color);
        line-height: 1.85;
        padding: 0.5em;

        &:first-child {
          border-left: 0;
        }

        &:last-child {
          border-right: 0;
        }

        p:only-child {
          margin: 0;
        }
      }

      th {
        font-weight: normal;
        text-align: left;
        border-top: 0;
      }
    }

    strong, b {
      font-weight: normal;
    }
  }

  // Renders the component.
  fun render : Html {
    if String.isNotEmpty(raw) {
      <div::root dangerouslySetInnerHTML={`{__html: #{raw}}`}/>
    } else {
      <div::root as root>children</div>
    }
  }
}
