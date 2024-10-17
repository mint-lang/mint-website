async component Sandbox.Recent {
  // The sandboxes.
  property sandboxes : Array(Sandbox)

  // The status of the user.
  property userStatus : UserStatus

  // Styles for the root element.
  style root {
    grid-template-rows: auto auto 1fr;
    display: grid;
    overflow: auto;
    padding: 20px;

    h1 {
      font-weight: normal;
      font-family: Forum;
      text-align: center;
      font-size: 2.5em;

      margin-bottom: 0;
      margin-top: 10px;
    }

    hr {
      margin: 20px 0;
      width: 100%;

      border: 0;
      border-bottom: 3px double var(--border-color);
    }

    p {
      text-align: center;
      font-size: 18px;

      margin: 20px 0;
      margin-bottom: 30px;
    }
  }

  // Renders the component.
  fun render : Html {
    let {actions, emptyActions} =
      Sandbox.MenuItems.sandboxesPage(userStatus)

    <Sandbox.Layout title={<strong>"Sandboxes"</strong>} actions={actions}>
      <div::root>
        <div>
          <h1>"Sandboxes"</h1>

          <p>
            "Sandboxes are Mint code snippets that you can share with others."
            <br/>
            "The most recently updated ones are listed below."
          </p>
        </div>

        <hr/>

        <Sandbox.Grid sandboxes={sandboxes} emptyActions={emptyActions}/>
      </div>
    </Sandbox.Layout>
  }
}
