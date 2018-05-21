component Pages.Roadmap.Feature {
  property children : Array(Html) = []
  property icon : Html = Html.empty()
  property description : String = ""
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

    & > svg {
      height: 12px;
      width: 12px;
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

    & > * + * {
      margin-top: 7px;
    }
  }

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

        <{
          if (Array.isEmpty(children)) {
            Html.empty()
          } else {
            <div::features>
              <{ children }>
            </div>
          }
        }>
      </div>
    </div>
  }
}
