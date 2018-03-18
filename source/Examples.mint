component Examples.Example {
  property description : String = ""
  property title : String = ""
  property href : String = ""

  style base {
    border: 1px solid #EEE;
    background: #FFF;
    cursor: pointer;
    padding: 20px;
    color: #444;
  }

  style description {
    line-height: 1.5;
    font-size: 14px;
  }

  style title {
    border-bottom: 1px solid #EEE;
    padding-bottom: 7px;
    margin-bottom: 7px;
    font-weight: bold;
    font-size: 18px;

    & > a {
      color: inherit;
    }
  }

  fun render : Html {
    <div::base onClick={\event : Html.Event => Navigation.navigate(href)}>
      <div::title>
        <{ title }>
      </div>

      <div::description>
        <{ description }>
      </div>
    </div>
  }
}

component Examples {
  style grid {
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    grid-gap: 20px 20px;
    display: grid;
  }

  style hr {
    margin: 20px 0;

    border: 0;
    border-top: 1px solid #EEE;
  }

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

      <hr::hr/>

      <div::grid>
        <Examples.Example
          title="User Management"
          href="/users"
          description={
            "This example contains an implementation of a table of us" \
            "ers with client side pagination and forms for creating n" \
            "ew users and editing existsing ones through an HTTP API."
          }/>

        <Examples.Example
          title="Drag and Drop"
          href="/drag"
          description={
            "This example shows how to drag and drop an HTML element " \
            "on the page."
          }/>

        <Examples.Example
          title="Counter"
          href="/counter"
          description={
            "This example shows a counter which stored in a store wit" \
            "h two buttons one for incrementing th counter and one fo" \
            "r decrementing it."
          }/>

        <Examples.Example
          title="File Handling"
          href="/examples/file-handling"
          description={
            "This example shows how to implement a component which lo" \
            "ads and shows a file from the users computer and then up" \
            "loads it to a server via HTTP."
          }/>

        <Ui.Link
          href="/examples/file-handling"
          label=""/>
      </div>
    </Page>
  }
}
