component Button {
  /* The click event handler. */
  property onClick : Function(Html.Event, Promise(Void)) = Promise.never1

  /* Whether or not the button is disabled. */
  property disabled : Bool = false

  /* Where to align the text in case the button is wide. */
  property align : String = "center"

  /* Whether or not make the text use ellipsis in case it overflows. */
  property ellipsis : Bool = true

  /* Whether or not to break the words. */
  property breakWords : Bool = false

  /* The icon before the label. */
  property iconBefore : Html = <></>

  /* The icon after the label. */
  property iconAfter : Html = <></>

  /* The label of the button. */
  property label : String = ""

  /* Styles for the button. */
  style styles {
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    -webkit-touch-callout: none;
    -webkit-appearance: none;
    appearance: none;

    border-radius: 0.1666em;
    display: inline-block;

    font-family: var(--font-family);
    font-weight: bold;
    font-size: 1em;

    box-sizing: border-box;
    text-decoration: none;
    user-select: none;

    position: relative;
    cursor: pointer;
    outline: none;
    padding: 0;
    margin: 0;
    border: 0;

    background: linear-gradient(#61b755, #4d8e43);
    color: #FFF;

    &::-moz-focus-inner {
      border: 0;
    }

    &:focus::before {
      content: "";

      border-radius: 0.25em;
      position: absolute;
      bottom: 0.1875em;
      right: 0.1875em;
      left: 0.1875em;
      top: 0.1875em;
    }

    &:hover,
    &:focus {

    }

    &:disabled {
      filter: saturate(0) brightness(0.8) contrast(0.5);
      cursor: not-allowed;
    }
  }

  /* Styles for the container. */
  style container {
    justify-content: #{align};
    align-items: center;
    display: flex;

    box-sizing: border-box;
    padding: 0.5em 1em;
  }

  /* Styles for the label. */
  style label {
    padding-bottom: 0.05em;
    line-height: 1.2;

    if breakWords {
      word-break: break-word;
    } else if ellipsis {
      text-overflow: ellipsis;
      white-space: nowrap;
      overflow: hidden;
    } else {
      white-space: nowrap;
    }
  }

  fun render : Html {
    <button::styles>
      <div::container>
        if Html.isNotEmpty(iconBefore) {
          <Icon icon={iconBefore}/>
        }

        if String.isNotBlank(label) {
          <div::label>
            <{ label }>
          </div>
        }

        if Html.isNotEmpty(iconAfter) {
          <Icon icon={iconAfter}/>
        }
      </div>
    </button>
  }
}
