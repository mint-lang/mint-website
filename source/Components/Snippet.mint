component Snippet {
  /* The snippet to display. */
  property children : Array(Html) = []

  /* The title of the snippet (usually the filename). */
  property title : String = ""

  /* Styles of the root element. */
  style root {
    position: relative;
    line-height: 1.25;
    min-width: 600px;
    font-size: 16px;
    margin: 0;

    .line {
      counter-increment: snippet;
      position: relative;
      display: block;

      &::before {
        content: counter(snippet);
        margin-right: 20px;
        width: 20px;
        display: inline-block;
        text-align: right;
        opacity: 0.3;
      }

      &::after {
        content: "";
        position: absolute;
        width: 1px;
        background: #EEE;
        top: 0;
        left: 30px;
        bottom: 0;
      }
    }

    code {
      display: block;
      padding: 20px;
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
      <code>
        children
      </code>
    </pre>
  }
}
