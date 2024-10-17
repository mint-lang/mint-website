component Sandbox.Layout {
  // The actions to display in the header menu.
  property actions : Array(MenuItem) = []

  // The children to display.
  property children : Array(Html) = []

  // The title in the header.
  property title : Html

  // Styles for the root element.
  style root {
    grid-template-rows: auto 1fr;
    min-height: 0;
    display: grid;
  }

  // Styles for the toolbar.
  style toolbar {
    border-bottom: 3px double var(--border-color);
    background-color: var(--blur-color-2);
    backdrop-filter: blur(3px);
    height: 46px;

    grid-template-columns: 1fr auto;
    align-items: center;
    padding: 0 20px;
    display: grid;
  }

  // Renders the component.
  fun render : Html {
    <div::root>
      <div::toolbar>
        title
        <Menu items={actions}/>
      </div>

      children
    </div>
  }
}
