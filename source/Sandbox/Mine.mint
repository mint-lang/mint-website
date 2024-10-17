async component Sandbox.Mine {
  // The sandboxes.
  property sandboxes : Array(Sandbox)

  // The status of the user.
  property userStatus : UserStatus

  // Styles for the root element.
  style root {
    overflow: auto;
    padding: 20px;
    display: grid;
  }

  // Renders the component.
  fun render : Html {
    let {actions, emptyActions} =
      Sandbox.MenuItems.sandboxesPage(userStatus)

    <Sandbox.Layout title={<strong>"My Sandboxes"</strong>} actions={actions}>
      <div::root>
        <Sandbox.Grid sandboxes={sandboxes} emptyActions={emptyActions}/>
      </div>
    </Sandbox.Layout>
  }
}
