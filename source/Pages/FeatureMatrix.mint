async component Pages.FeatureMatrix {
  connect Application exposing { isMobile }

  // Styles for the root element.
  style root {
    background: var(--blur-color-2);
    padding: 40px 20px;
    min-height: 0;

    grid-template-columns: 1fr 1fr;
    display: grid;
    gap: 80px;
  }

  // Styles for the table.
  style table {
    border: 1px solid var(--border-color);
    color: currentColor;
    overflow: auto;
  }

  // Styles for a feature.
  style feature (feature : Feature) {
    position: relative;
    height: 29px;

    case feature {
      NotApplicable => background: var(--line-number-color);
      SupportedBut => background: var(--color-mintgreen-2);
      NotSupported => background: var(--color-crimson);
      ViaPackage => background: var(--color-royalblue);
      Supported => background: var(--color-mintgreen);
      Partial => background: var(--color-darkorange);
      Unkown => background: var(--color-darkmagenta);
    }

    &:hover > div {
      display: block;
    }

    > div {
      background: inherit;
      font-weight: 500;
      padding: 10px;
      color: white;

      bottom: calc(100% + 3px);
      border-radius: 2px;
      position: absolute;
      display: none;
      width: 200px;
      right: 0;
    }
  }

  // Styles for a row.
  style row {
    grid-template-columns: 300px repeat(7, 40px);
    display: grid;
  }

  // Styles for the table header.
  style header {
    border-bottom: 3px double var(--border-color);
    background: var(--input-color);
    font-weight: bold;
    position: sticky;
    z-index: 1;
    top: 0;

    > div {
      border-right: 1px solid var(--border-color);
      padding: 15px 10px;
    }

    > div:first-child {
      align-items: end;
      display: flex;
    }
  }

  // Styles for a language label.
  style language {
    writing-mode: sideways-lr;
  }

  // Styles for a feature label.
  style label {
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;

    font-family: Fira Code;
    padding: 4px 10px;
    font-weight: 500;
    font-size: 14px;
  }

  // Styles for a feature.
  style feature-row {
    border-bottom: 1px solid var(--border-color);

    > div {
      margin: 1px;
    }
  }

  // Styles for a legend.
  style legend {
    grid-template-columns: 40px 1fr;
    align-items: center;
    grid-gap: 10px;
    display: grid;
    margin: 5px 0;

    > div {
      border-radius: 2px;
    }
  }

  // Renders a feature.
  fun renderFeature (feature : Feature) {
    <div::feature(feature)>
      case feature {
        SupportedBut(explanation) => <div>explanation</div>
        Partial(explanation) => <div>explanation</div>
        => <></>
      }
    </div>
  }

  // Renders the component.
  fun renderContent : Html {
    <div::root>
      <Content>
        <PageHeader
          title="Feature Matrix"
          subtitle="Compare features across languages suited for single " \
          "page applications"
        />

        <<#MARKDOWN
        To the right, you will find a table that outlines language features
        (not exhaustive) and the corresponding languages, indicating which
        features are available for each language.

        This can assist you in choosing the language that you feel most
        comfortable with and that is best suited to you and your tasks.

        ## Legend
        MARKDOWN

        <p>"Here you can find what each color means:"</p>

        <p::legend>
          <div::feature(Feature.Supported)/>
          <span>"The feature is fully supported."</span>
        </p>

        <p::legend>
          <div::feature(Feature.SupportedBut(""))/>

          <span>
            "The feature is fully supported but with caveats (hover for " \
            "more information)."
          </span>
        </p>

        <p::legend>
          <div::feature(Feature.ViaPackage)/>
          <span>"The feature is supported via an external package."</span>
        </p>

        <p::legend>
          <div::feature(Feature.Partial(""))/>

          <span>
            "The feature is partially supported (hover for more " \
            "information)."
          </span>
        </p>

        <p::legend>
          <div::feature(Feature.NotApplicable)/>
          <span>"The feature is not applicable."</span>
        </p>

        <p::legend>
          <div::feature(Feature.NotSupported)/>
          <span>"The feature is not supported."</span>
        </p>

        <p::legend>
          <div::feature(Feature.Unkown)/>

          <span>
            "The feature support is unkown (if you have information about " \
            "it let us know)."
          </span>
        </p>
      </Content>

      <div::table>
        <div::header::row>
          <div>"Feature"</div>
          <div::language>"Mint"</div>
          <div::language>"JavaScript"</div>
          <div::language>"TypeScript"</div>
          <div::language>"Gleam"</div>
          <div::language>"Elm"</div>
          <div::language>"ReScript"</div>
          <div::language>"ClojureScript"</div>

          // <div::language>"PureScript"</div>
        </div>

        for key, feature of Data.FEATURE_MATRIX {
          <div::row::feature-row>
            <div::label>key</div>
            renderFeature(feature.mint)
            renderFeature(feature.javaScript)
            renderFeature(feature.typeScript)
            renderFeature(feature.gleam)
            renderFeature(feature.elm)
            renderFeature(feature.reScript)
            renderFeature(feature.clojureScript)
          </div>
        }
      </div>
    </div>
  }

  fun render : Html {
    if isMobile {
      <Message
        subtitle=<>"The feature matrix is not available on mobile devices."</>
        title=<>"Hello,"</>
        actions={
          <Content mobileFontSize={16}>
            ContentInstrumenter.instrument(
              <>
                "Please check out the "

                <a href="/reference">"reference"</a>

                " instead."
              </>)
          </Content>
        }
      />
    } else {
      renderContent()
    }
  }
}
