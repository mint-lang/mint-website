component Users.Layout {
  property children : Array(Html) = []

  style wrapper {
    padding: 0 20px;
    margin: 0 auto;
    width: 1040px;
  }

  style content {
    padding: 24px 0;
  }

  fun render : html {
    <div>
      <Ui.Breadcrumbs separator="|">
        <Ui.Breadcrumb
          label="Home"
          href="/users"/>

        <Ui.Breadcrumb
          label="New User"
          href="/users/new"/>
      </Ui.Breadcrumbs>

      <div::wrapper>
        <div::content>
          <{ children }>
        </div>
      </div>
    </div>
  }
}
