component Sandbox.Grid {
  // The empty actions to show.
  property emptyActions : Array(MenuItem)

  // The sandboxes.
  property sandboxes : Array(Sandbox)

  // Styles for the root element.
  style root {
    grid-template-columns: repeat(auto-fill, minmax(20em, 1fr));
    align-content: start;
    grid-gap: 2em;
    display: grid;
  }

  // Renders the comonent.
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
