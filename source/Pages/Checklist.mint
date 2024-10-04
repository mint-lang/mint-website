component Pages.Checklist {
  // Styles for the root element.
  style root {
    max-width: 100ch;
    margin: 0 auto;
  }

  style item {
    grid-template-columns: auto 1fr;
    align-items: center;
    grid-gap: 0.25em 0.33em;
    display: grid;

    font-size: 18px;

    svg {
      height: 18px;
      width: 18px;
    }

    span {
      font-size: 16px;
      grid-column: 2;
    }
  }

  fun render : Html {
    <div::root>
      <Content>
        <<#MARKDOWN
        # Language Checklist

        This page progress of Mint againts the [Language Checklist].

        [Language Checklist]: https://alexshroyer.com/posts/2024-02-23-Language-Checklist.html
        MARKDOWN

        <div::item>
          TablerIcons.CIRCLE_CHECK
          <b>"Compiler"</b>
          <span>"Compiles to JavaScript (ESModules)"</span>
        </div>

        <div::item>
          TablerIcons.CIRCLE_CHECK
          <b>"Type Checking"</b>
          <span>"Hindley-Milner type system"</span>
        </div>

        <div::item>
          TablerIcons.CIRCLE_CHECK
          <b>"Linter"</b>
          <span><code>"mint lint"</code></span>
        </div>
        |> ContentInstrumenter.instrument()
      </Content>
    </div>
  }
}
