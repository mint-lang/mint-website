/* A component for a roadmap version. */
component Pages.Roadmap.Version {
  /* The children to render. */
  property children : Array(Html) = []

  /* The name of the version. */
  property name : String = ""

  style name {
    border-bottom: 2px solid #EEE;
    padding-bottom: 5px;
    margin-bottom: 15px;
    font-family: Amiko;
    margin-top: 40px;
    font-size: 24px;
    color: #222;
  }

  style features {
    & > * + * {
      margin-top: 20px;
    }
  }

  /* Renders the version. */
  fun render : Html {
    <div>
      <div::name>
        <{ name }>
      </div>

      <div::features>
        <{ children }>
      </div>
    </div>
  }
}
