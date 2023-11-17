async component Divider {
  /* Styles for the root element. */
  style root {
    position: relative;
    margin: 100px 0;
    height: 1px;

    &::before,
    &::after {
      width: calc(50% - 40px);
      border-top: 2px solid #999;
      position: absolute;
      content: "";
      top: 1px;
    }

    &::after {
      right: 0;
    }

    &::before {
      left: 0;
    }
  }

  style rect {
    transform: rotate(45deg);
    border: 2px solid #666;
    height: 16px;
    width: 16px;

    position: absolute;
    top: -8px;
    left: calc(50% - 10px);

    &:first-child {
      margin-left: -13px;
    }

    &:last-child {
      margin-left: 13px;
    }
  }

  /* Renders the component. */
  fun render : Html {
    <div::root>
      <div::rect/>
      <div::rect/>
      <div::rect/>
    </div>
  }
}
