component Examples {
  fun render : Html {
    <Page>
      <Title>
        <{ "Examples" }>
      </Title>

      <SubTitle>
        <{
          "Here you can find some examples that showcase the langua" \
          "ge features."
        }>
      </SubTitle>

      <Ui.Link
        href="/users"
        label="Users"/>

      <Ui.Link
        href="/drag"
        label="Drag"/>

      <Ui.Link
        href="/counter"
        label="Counter"/>
    </Page>
  }
}
