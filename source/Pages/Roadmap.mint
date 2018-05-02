component Roadmap.Feature {
  property children : Array(Html) = []
  property icon : Html = Html.empty()
  property description : String = ""
  property name : String = ""

  style base {
    display: flex;
  }

  style icon {
    margin-right: 10px;
    opacity: 0.3;

    &:empty {
      display: none;
    }

    & > svg {
      height: 12px;
      width: 12px;
    }
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
      <div::icon>
        <{ icon }>
      </div>

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
  get checkmark : Html {
    <svg
      xmlns="http://www.w3.org/2000/svg"
      width="24"
      height="24"
      viewBox="0 0 24 24">

      <path
        d={
          "M20.285 2l-11.285 11.567-5.286-5.011-3.714 3.716 9 8.728" \
          " 15-15.285z"
        }/>

    </svg>
  }

  get diamond : Html {
    <svg
      xmlns="http://www.w3.org/2000/svg"
      viewBox="0 0 24 24"
      fillRule="evenodd"
      clipRule="evenodd"
      height="24"
      width="24">

      <path
        d={
          "M12 0l-12 12.001 12 11.999 12.001-11.999-12.001-12.001zm" \
          "-9.171 12.001l9.171-9.172 9.172 9.172-9.172 9.172-9.171-" \
          "9.172z"
        }/>

    </svg>
  }

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
          icon={diamond}
          description={
            "Check the values of known CSS properties and warn the de" \
            "veloper if it's not matches the available values."
          }/>

        <Roadmap.Feature
          name="HTML Attribute Checking"
          icon={diamond}
          description={
            "Check the values of HTML attributes based on the tag the" \
            "y belong to (for example check alt attributes for <img> " \
            "tags)."
          }/>

        <Roadmap.Feature
          name="Progressive Web Application Support"
          icon={diamond}
          description={
            "Automatically generate files for basic PWA features (ser" \
            "vice-worker, manifest, icons)."
          }/>

        <Roadmap.Feature
          description="A package for monitoring the state of the application."
          name="Devtools"
          icon={diamond}/>

        <Roadmap.Feature
          name="Documentation Generator"
          icon={diamond}
          description={
            "Generate beautiful documentation for your project, inclu" \
            "ding dependencies."
          }/>

        <Roadmap.Feature
          name="Selective Compilation"
          icon={diamond}
          description="Only compile the entities that are being used."/>

        <Roadmap.Feature
          name="Hot Reloading"
          icon={diamond}
          description={
            "In development mode replace entities that changed withou" \
            "t losing state. "
          }/>

        <Roadmap.Feature
          name="Testing"
          icon={diamond}
          description={
            "Language feature for easily testing components or the wh" \
            "ole application."
          }/>

        <Roadmap.Feature
          name="Language Server Protocol"
          icon={diamond}
          description={
            "Implement a language server to expose the AST for code e" \
            "ditors."
          }/>

        <Roadmap.Feature
          name="Website for Packages"
          icon={diamond}
          description="A website to browse, find and rate community packages."/>

        <Roadmap.Feature
          name="Image Optimization"
          icon={diamond}
          description="During the build process optimize images automatically."/>

        <Roadmap.Feature
          name="Application Structure Diagram"
          icon={diamond}
          description={
            "Construct an interactive diagram of application structur" \
            "e containing routes, stores, providers and components. "
          }/>
      </Roadmap.Version>

      <Roadmap.Version version="0.1">
        <Roadmap.Feature
          description="The language itself."
          name="Language Basics"
          icon={checkmark}>

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
          icon={checkmark}>

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
          icon={checkmark}
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
          icon={checkmark}
          description={
            "A server that automatically formats code and reloads the" \
            " application when any of the source files change."
          }/>

        <Roadmap.Feature
          name="Package Manager"
          icon={checkmark}
          description={
            "Install external sources (packages) directly from Git re" \
            "positories."
          }/>

        <Roadmap.Feature
          name="Command Line Interface"
          icon={checkmark}
          description={
            "A binary that allows to access the features of the langu" \
            "age."
          }/>
      </Roadmap.Version>
    </Page>
  }
}
