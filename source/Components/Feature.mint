/* A component for an individual feature in the features section. */
component Feature {
  /* The title of the feature. */
  property title : String = ""

  /* The text of the feature. */
  property text : String = ""

  style title {
    border-bottom: 1px dashed #CCC;
    padding-bottom: 10px;
    align-items: center;
    margin-bottom: 10px;
    position: relative;
    font-weight: bold;
    display: flex;

    svg {
      margin-right: 10px;
      fill: #2f9e59;
      height: 14px;
      width: 14px;
    }
  }

  style text {
    position: relative;
    z-index: 1;
  }

  style base {
    position: relative;
    background: #FFF;
    overflow: hidden;
    padding: 20px;
  }

  /* Renders the component. */
  fun render : Html {
    <div::base>
      <div::title>
        <{ Icons.star() }>
        <{ title }>
      </div>

      <div::text>
        <{ text }>
      </div>
    </div>
  }
}
