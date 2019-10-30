/* A component to render the summary of an example. */
component Pages.Examples.Example {
  /* The description of the example. */
  property description : String = ""

  /* The title of the example. */
  property title : String = ""

  /* The URL of the example. */
  property href : String = ""

  style base {
    border: 1px solid #EEE;
    text-decoration: none;
    background: #FFF;
    cursor: pointer;
    padding: 20px;
    color: #444;
  }

  style description {
    line-height: 1.5;
    font-size: 14px;
  }

  style title {
    border-bottom: 1px solid #EEE;
    padding-bottom: 7px;
    margin-bottom: 7px;
    font-weight: bold;
    font-size: 18px;

    > a {
      color: inherit;
    }
  }

  /* Renders the component. */
  fun render : Html {
    <a::base href={href}>
      <div::title>
        <{ title }>
      </div>

      <div::description>
        <{ description }>
      </div>
    </a>
  }
}
