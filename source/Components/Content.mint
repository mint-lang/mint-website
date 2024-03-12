component Content {
  /* The contents. */
  property children : Array(Html) = []

  property preMinWidth : String = "auto"
  property fontSize : Number = 18

  /* Styles for the root element. */
  style root {
    font-size: #{fontSize}px;
    line-height: 1.5;

    h1,
    h2,
    h3 {
      font-weight: normal;
      font-family: Forum;
    }

    h2,
    h3 {
      align-items: center;
      position: relative;
      display: flex;

      margin-bottom: 0;

      &:after {
        border-top: 1px solid #EEE;
        margin-top: 0.6em;
        margin-left: 1em;
        content: "";
        flex: 1;
      }
    }

    h1 {
      border-bottom: 3px double #EEE;
      font-size: 2.25em;
    }

    h3 {
      margin-top: 1.25em;
      font-size: 1.5em;
    }

    h2 {
      font-size: 1.75em;
      margin-top: 1em;

      :not(pre) code {
        font-weight: bold;
        font-size: 0.5em;
      }

      > svg {
        --tabler-stroke-width: 1.25;

        margin-right: 0.25em;
        flex: 0 0 auto;
        height: auto;
        width: 1em;
      }
    }

    li + li {
      margin-top: 0.25em;
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
      border: 1px solid #EEE;
      border-radius: 2px;

      padding: 3px 5px 2px 5px;
      background: #FEFEFE;
      font-size: 14px;
    }

    pre:has(.language-bash) {
      border-left: 3px solid #EEE;
      padding-left: 20px;

      .line::before,
      .line::after {
        display: none;
      }
    }

    pre {
      min-width: #{preMinWidth};
      font-size: 16px;
      overflow: auto;

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
            display: inline-block;
            margin-right: 20px;
            text-align: right;
            opacity: 0.3;
            width: 20px;
          }

          &::after {
            position: absolute;
            background: #EEE;
            content: "";
            width: 1px;
            left: 30px;
            bottom: 0;
            top: 0;
          }
        }

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

        .namespace,
        .property {
          color: indianred;
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

      svg {
        --tabler-stroke-width: 1.5;
        vertical-align: middle;
        margin-right: 0.1em;
        position: relative;
        height: 1em;
        width: 1em;
      }
    }

    > *:first-child {
      margin-top: 0;
    }

    > *:last-child {
      margin-bottom: 0;
    }

    > h1,
    > h2,
    > h3 {
      > a {
        text-decoration: none;
        color: inherit;

        &:hover {
          text-decoration: underline;
          color: seagreen;
        }
      }
    }

    table {
      border-collapse: collapse;
      font-size: 0.8em;
      width: 100%;

      thead {
        border-bottom: 2px solid #EEE;
      }

      tr:last-child td {
        border-bottom: 0;
      }

      th,
      td {
        border: 1px solid #EEE;
        line-height: 1.6;
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
        text-align: left;
        border-top: 0;
      }
    }
  }

  fun render : Html {
    <div::root as root>
      children
    </div>
  }
}
