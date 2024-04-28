component MeasuredLogo {
  // Whether to show the logo in dark background.
  property dark : Bool = false

  // The padding.
  property padding : Number

  // The height.
  property height : Number

  // The width.
  property width : Number

  // The logo.
  property logo : Html

  // Styles for the root element.
  style root {
    height: #{height + (padding * 2) + 35}px;
    width: #{width + (padding * 2) + 85}px;
    box-sizing: border-box;
    padding-left: 35px;
    align-items: end;
    display: grid;
  }

  // Styles for the container.
  style container {
    border: 1px solid var(--border-color);
    padding: #{padding}px;
    height: #{height}px;
    position: relative;
    width: #{width}px;

    font-weight: normal;
    font-size: 12px;

    if dark {
      background: #1E1E1E;
    } else {
      background: #FFFFFF;
    }
  }

  // Styles for the image.
  style image {
    height: #{height}px;
    width: #{width}px;

    svg {
      height: inherit;
      width: inherit;

      #text {
        if dark {
          fill: #FFF;
        } else {
          fill: #000;
        }
      }
    }

    if dark {
      border: 1px dashed #333;
    } else {
      border: 1px dashed #DDD;
    }
  }

  // Styles for the height bar.
  style height {
    padding-left: 18px;
    position: absolute;
    left: 100%;
    bottom: 0;
    top: 0;

    align-items: center;
    display: grid;

    &::before {
      content: "";

      position: absolute;
      bottom: -1px;
      left: 8px;
      top: -1px;

      border: 1px solid var(--line-number-color);
      border-left: 0;
      width: 4px;
    }
  }

  // Styles for the width bar.
  style width {
    padding-bottom: 14px;
    text-align: center;
    position: absolute;
    bottom: 100%;
    right: 0;
    left: 0;

    &::before {
      content: "";

      position: absolute;
      bottom: 8px;
      right: -1px;
      left: -1px;

      border: 1px solid var(--line-number-color);
      border-bottom: 0;
      height: 4px;
    }
  }

  // Styles for the padding bar.
  style padding {
    padding-right: 8px;

    align-items: center;
    display: grid;

    position: absolute;
    right: 100%;
    bottom: 0;
    top: 0;

    &::before {
      content: "";

      width: calc(#{padding}px - 4px);
      left: calc(100% + 1px);
      top: calc(50% - 1px);
      position: absolute;

      border: 1px solid var(--line-number-color);
      border-bottom: 0;
      height: 4px;
    }

    &::after {
      content: "";

      width: calc(#{padding}px - 4px);
      left: calc(100% + 1px);
      top: calc(50% - 4px);
      position: absolute;

      border: 1px solid var(--line-number-color);
      border-bottom: 0;
      border-top: 0;
      height: 3px;
    }
  }

  // Renders the component.
  fun render : Html {
    <div::root>
      <div::container>
        <div::height>"#{height + padding * 2}px"</div>
        <div::width>"#{width + padding * 2}px"</div>
        <div::padding>"#{padding}px"</div>

        <div::image>
          logo
        </div>
      </div>
    </div>
  }
}
