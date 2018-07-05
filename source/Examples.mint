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
    <div::base onClick={\event : Html.Event => Window.navigate(href)}>
      <div::title>
        <{ title }>
      </div>

      <div::description>
        <{ description }>
      </div>
    </div>
  }
}

record Examples.Item {
  description : String,
  title : String,
  href : String,
  src : String
}

store Examples.Store {
  property userManagement : Examples.Item = {
    title = "User Management",
    href = "/users",
    description =
      "This example contains an implementation of a table of us" \
      "ers with client side pagination and forms for creating n" \
      "ew users and editing existsing ones through an HTTP API.",
    src =
      "https://github.com/mint-lang/mint-website/blob/master/so" \
      "urce/UserForm.mint"
  }

  property drag : Examples.Item = {
    title = "Drag and Drop",
    href = "/drag",
    description =
      "This example shows how to drag and drop an HTML element " \
      "on the page.",
    src =
      "https://github.com/mint-lang/mint-website/blob/master/so" \
      "urce/Drag.mint"
  }

  property fileHandling : Examples.Item = {
    title = "File Handling",
    href = "/examples/file-handling",
    description =
      "This example shows how to implement a component which lo" \
      "ads and shows a file from the users computer and then up" \
      "loads it to a server via HTTP.",
    src =
      "https://github.com/mint-lang/mint-website/blob/master/so" \
      "urce/Examples.FileHandling.mint"
  }

  property counter : Examples.Item = {
    title = "Counter",
    href = "/counter",
    description =
      "This example shows a counter which stored in a store wit" \
      "h two buttons one for incrementing th counter and one fo" \
      "r decrementing it.",
    src =
      "https://github.com/mint-lang/mint-website/blob/master/so" \
      "urce/Examples.Counter.mint"
  }
}

component Examples {
  connect Examples.Store exposing { userManagement, drag, fileHandling, counter }

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
          description={userManagement.description}
          title={userManagement.title}
          href={userManagement.href}/>

        <Examples.Example
          description={drag.description}
          title={drag.title}
          href={drag.href}/>

        <Examples.Example
          description={counter.description}
          title={counter.title}
          href={counter.href}/>

        <Examples.Example
          description={fileHandling.description}
          title={fileHandling.title}
          href={fileHandling.href}/>
      </div>
    </Page>
  }
}
