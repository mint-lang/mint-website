/* The page with the examples. */
component Pages.Examples {
  style grid {
    grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
    grid-gap: 20px 20px;
    display: grid;
  }

  style hr {
    margin: 20px 0;

    border: 0;
    border-top: 1px solid #EEE;
  }

  /* Renders the page. */
  fun render : Html {
    <Page>
      <Title>
        <{ "Examples" }>
      </Title>

      <SubTitle>
        <{
          "Here you can find some examples that showcase the langua" \
          "ge's features."
        }>
      </SubTitle>

      <hr::hr/>

      <div::grid>
        <Pages.Examples.Example
          title="Drag and Drop"
          href="/examples/drag"
          description={
            "This example shows how to drag and drop an HTML element " \
            "on the page."
          }/>

        <Pages.Examples.Example
          href="/examples/file-handling"
          title="File Handling"
          description={
            "This example shows how to implement a component which lo" \
            "ads and shows a file from the user's computer and then up" \
            "loads it to a server via HTTP."
          }/>

        <Pages.Examples.Example
          href="/examples/counter"
          title="Counter"
          description={
            "This example shows a counter that is stored in a store wit" \
            "h two buttons: one for incrementing the counter and one fo" \
            "r decrementing it."
          }/>
      </div>
    </Page>
  }
}
