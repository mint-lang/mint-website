component Roadmap.Feature {
  property children : Array(Html) = []
  property description : String = ""
  property icon : String = ""
  property name : String = ""

  style base {
    display: flex;
  }

  style icon {
    margin-right: 10px;
    opacity: 0.3;
  }

  style title {
    font-weight: 600;
    color: #222;
  }

  style description {
    font-size: 14px;
    color: #777;
  }

  style features {
    border-left: 1px solid #EEE;
    padding-left: 15px;
    margin-left: 10px;
    margin-top: 10px;

    & > * + * {
      margin-top: 7px;
    }
  }

  fun render : Html {
    <div::base>
      <{
        if (String.isEmpty(icon)) {
          Html.empty()
        } else {
          <div::icon>
            <{ icon }>
          </div>
        }
      }>

      <div>
        <div::title>
          <{ name }>
        </div>

        <div::description>
          <{ description }>
        </div>

        <{
          if (Array.isEmpty(children)) {
            Html.empty()
          } else {
            <div::features>
              <{ children }>
            </div>
          }
        }>
      </div>
    </div>
  }
}

component Roadmap.Version {
  property children : Array(Html) = []
  property version : String = ""

  style title {
    border-bottom: 2px solid #EEE;
    padding-bottom: 5px;
    margin-bottom: 15px;
    font-family: Amiko;
    margin-top: 40px;
    font-size: 24px;
    color: #222;
  }

  style features {
    & > * + * {
      margin-top: 20px;
    }
  }

  fun render : Html {
    <div>
      <div::title>
        <{ version }>
      </div>

      <div::features>
        <{ children }>
      </div>
    </div>
  }
}

component Roadmap {
  fun render : Html {
    <Page>
      <Title>
        <{ "Roadmap" }>
      </Title>

      <SubTitle>
        <{
          "This page contains planned and shipped high level featur" \
          "es up to the stable release (1.0.0)."
        }>
      </SubTitle>

      <Roadmap.Version version="Planned Features">
        <Roadmap.Feature
          name="CSS Type Checking"
          icon="🞛"
          description={
            "Check the values of known CSS properties and warn the de" \
            "veloper if it's not matches the available values."
          }/>

        <Roadmap.Feature
          name="HTML Attribute Checking"
          icon="🞛"
          description={
            "Check the values of HTML attributes based on the tag the" \
            "y belong to (for example check alt attributes for <img> " \
            "tags)."
          }/>

        <Roadmap.Feature
          name="Progressive Web Application Support"
          icon="🞛"
          description={
            "Automatically generate files for basic PWA features (ser" \
            "vice-worker, manifest, icons)."
          }/>

        <Roadmap.Feature
          name="Devtools"
          icon="🞛"
          description="A package for monitoring the state of the application."/>

        <Roadmap.Feature
          name="Documentation Generator"
          icon="🞛"
          description={
            "Generate beatuifl documentation for your project, includ" \
            "ing dependencies."
          }/>

        <Roadmap.Feature
          name="Compiler Optimalization"
          icon="🞛"
          description="Only compile the entities that are being used."/>

        <Roadmap.Feature
          name="Testing"
          icon="🞛"
          description={
            "Language feature for easily testing components or the wh" \
            "ole application."
          }/>

        <Roadmap.Feature
          name="Language Server Protocol"
          icon="🞛"
          description={
            "Implement a language server to expose the AST for code e" \
            "ditors."
          }/>

        <Roadmap.Feature
          name="Website for Packages"
          icon="🞛"
          description="A website to browse, find and rate community packages."/>

        <Roadmap.Feature
          name="Image Optimization"
          icon="🞛"
          description="During the build process optimize images automatically."/>

        <Roadmap.Feature
          name="Application Structure Diagram"
          icon="🞛"
          description={
            "Construct an interactive diagram of application structur" \
            "e containing routes, stores, providers and components. "
          }/>
      </Roadmap.Version>

      <Roadmap.Version version="0.1">
        <Roadmap.Feature
          description="The language itself."
          name="Language Basics"
          icon="🞛">

          <Roadmap.Feature
            name="Parser"
            description="Converts source code to an AST."/>

          <Roadmap.Feature
            name="Formatter"
            description="Reproduces source code from an AST."/>

          <Roadmap.Feature
            name="Type Checker"
            description="Walks the AST and type checks the application."/>

          <Roadmap.Feature
            name="Compiler"
            description="Compiles an application to JavaScript."/>

        </Roadmap.Feature>

        <Roadmap.Feature
          description="The features of the language."
          name="Language Features"
          icon="🞛">

          <Roadmap.Feature
            name="Components"
            description={
              "Define components with type checked properties and state" \
              "."
            }/>

          <Roadmap.Feature
            name="Styling"
            description="Styling HTML tags in a dynamic way without conflicts."/>

          <Roadmap.Feature
            name="Routing"
            description="Define routes in a declarative way."/>

          <Roadmap.Feature
            name="Computations"
            description={
              "Handle synchronous (JSON decoding) and asynchronous (HTT" \
              "P Request) computations that might fail."
            }/>

          <Roadmap.Feature
            name="State"
            description="Manage global state with Stores."/>

          <Roadmap.Feature
            name="Subscriptions"
            description={
              "Subscribe to global events (mouse, window) using provide" \
              "rs."
            }/>

          <Roadmap.Feature
            name="JavaScript Interopability"
            description="Simply call out the JavaScript when you need to."/>

        </Roadmap.Feature>

        <Roadmap.Feature
          name="Production Builder"
          icon="🞛"
          description={
            "The process of building the production version of the ap" \
            "plication."
          }>

          <Roadmap.Feature
            name="Icon Generator"
            description={
              "Generate icons for most common use cases (favicon, appli" \
              "cation icons)."
            }/>

          <Roadmap.Feature
            name="Bundling and Minification"
            description={
              "Compile and minify the application into a single JavaScr" \
              "ipt file."
            }/>

        </Roadmap.Feature>

        <Roadmap.Feature
          name="Development Server"
          icon="🞛"
          description={
            "A server that automatically formats code and reloads the" \
            " application when any of the source files change."
          }/>

        <Roadmap.Feature
          name="Package Manager"
          icon="🞛"
          description={
            "Install external sources (packages) directly from Git re" \
            "positories."
          }/>

        <Roadmap.Feature
          name="Command Line Interface"
          icon="🞛"
          description={
            "A binary that allows to access the features of the langu" \
            "age."
          }/>
      </Roadmap.Version>
    </Page>
  }
}
