component Sandbox.Grid {
  connect Application exposing { isMobile }

  // The empty actions to show.
  property emptyActions : Array(MenuItem)

  // The sandboxes.
  property sandboxes : Array(Sandbox)

  // Styles for the root element.
  style root {
    grid-template-columns: repeat(auto-fill, minmax(#{cellWidth}, 1fr));
    align-content: start;
    grid-gap: 2em;
    display: grid;
  }

  get cellWidth {
    if isMobile {
      "260px"
    } else {
      "20em"
    }
  }

  // Renders the component.
  fun render : Html {
    if Array.isEmpty(sandboxes) {
      <Message
        subtitle=<>"There are no sandboxes that we can display here."</>
        actions={<Menu items={emptyActions}/>}
        title=<>"Hello,"</>
      />
    } else {
      <div::root>
        for project of sandboxes {
          <Sandbox.Card sandbox={project}/>
        }
      </div>
    }
  }
}
