/* A component for a roadmap feature. */
component Pages.Roadmap.Feature {
  /* The children to render. */
  property children : Array(Html) = []

  /* The icon. */
  property icon : Html = Html.empty()

  /* The description of the feature. */
  property description : String = ""

  /* The name of the feature. */
  property name : String = ""

  style base {
    display: flex;
  }

  style icon {
    margin-right: 10px;
    opacity: 0.3;

    &:empty {
      display: none;
    }

    > svg {
      height: 12px;
      width: 12px;
    }

    @media (max-width: 600px) {
      display: none;
    }
  }

  style title {
    font-weight: 600;
    color: #222;
  }

  style description {
    font-size: 14px;
    color: #777;
  }

  style features {
    border-left: 1px solid #EEE;
    padding-left: 15px;
    margin-left: 10px;
    margin-top: 10px;

    > * + * {
      margin-top: 7px;
    }

    @media (max-width: 600px) {
      margin-left: 3px;
    }
  }

  /* Renders the feature. */
  fun render : Html {
    <div::base>
      <div::icon>
        <{ icon }>
      </div>

      <div>
        <div::title>
          <{ name }>
        </div>

        <div::description>
          <{ description }>
        </div>

        <Unless condition={Array.isEmpty(children)}>
          <div::features>
            <{ children }>
          </div>
        </Unless>
      </div>
    </div>
  }
}
