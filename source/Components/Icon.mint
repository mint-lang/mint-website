/* A component to render SVG icons. */
component Ui.Icon {
  /* The opacity of the icon. */
  property opacity : Number = 1

  /* The actual SVG icon. */
  property icon : Html = <></>

  /* The styles for the icon. */
  style base {
    justify-content: center;
    display: inline-flex;
    align-items: center;

    svg {
      opacity: #{opacity};
      fill: currentColor;
      height: 24px;
      width: 24px;
    }
  }

  fun render : Html {
    <div::base>
      <{ icon }>
    </div>
  }
}
