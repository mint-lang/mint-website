async component Sandbox.Recent {
  // The sandboxes.
  property sandboxes : Array(Sandbox)

  // The status of the user.
  property userStatus : UserStatus

  // Styles for the root element.
  style root {
    grid-template-rows: auto auto 1fr;
    padding: 30px 20px;
    overflow: auto;
    display: grid;
    gap: 30px;
  }

  // Renders the component.
  fun render : Html {
    let {actions, emptyActions} =
      Sandbox.MenuItems.sandboxesPage(userStatus)

    <Sandbox.Layout title={<strong>"Sandboxes"</strong>} actions={actions}>
      <div::root>
        <PageHero title={"Sandboxes"}>
          "Sandboxes are Mint code snippets that you can share with others."
          <br/>
          "The most recently updated ones are listed below."
        </PageHero>

        <Sandbox.Grid sandboxes={sandboxes} emptyActions={emptyActions}/>
      </div>
    </Sandbox.Layout>
  }
}
