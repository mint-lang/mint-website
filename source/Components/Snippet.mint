async component Snippet {
  /* The snippet to display. */
  property children : Array(Html) = []

  /* The title of the snippet (usually the filename). */
  property title : String = ""

  /* Styles of the root element. */
  style root {
    background: #FAFAFA;
    position: relative;
    min-width: 600px;
    font-size: 16px;
    margin: 0;

    outline: 1px dashed #AAA;
    outline-offset: 3px;

    p {
      border-bottom: 1px dashed #AAA;
      padding: 10px 15px;
      margin: 0;

      font-family: monospace;
      font-weight: bold;
      font-size: 14px;

      justify-content: space-between;
      align-items: center;
      display: flex;

      svg {
        --tabler-stroke-width: 1.75;

        height: 20px;
        width: 20px;

        path {
          stroke: #AAA;
        }
      }
    }

    code {
      display: block;
      padding: 15px;
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

  /* Renders the component. */
  fun render : Html {
    <pre::root>
      <p>
        title
        TablerIcons.COPY
      </p>

      <code>
        children
      </code>
    </pre>
  }
}
