/* The roadmap page. */
component Pages.Roadmap {
  /* Renders the page. */
  fun render : Html {
    <Page>
      <Title>
        "Roadmap"
      </Title>

      <SubTitle>
        "This page contains planned and shipped high level featur" \
        "es up to the stable release (1.0.0)."
      </SubTitle>

      <Pages.Roadmap.Version name="Planned Features">
        <Pages.Roadmap.Feature
          name="CSS Type Checking"
          icon={Icons.diamond()}
          description={
            "Check the values of known CSS properties and warn the de" \
            "veloper if it's not matches the available values."
          }/>

        <Pages.Roadmap.Feature
          name="HTML Attribute Checking"
          icon={Icons.diamond()}
          description={
            "Check the values of HTML attributes based on the tag the" \
            "y belong to (for example check alt attributes for <img> " \
            "tags)."
          }/>

        <Pages.Roadmap.Feature
          description="A package for monitoring the state of the application."
          icon={Icons.diamond()}
          name="Devtools"/>

        <Pages.Roadmap.Feature
          name="Hot Reloading"
          icon={Icons.diamond()}
          description={
            "In development mode replace entities that changed withou" \
            "t losing state. "
          }/>

        <Pages.Roadmap.Feature
          name="Language Server Protocol"
          icon={Icons.diamond()}
          description={
            "Implement a language server to expose the AST for code e" \
            "ditors."
          }/>

        <Pages.Roadmap.Feature
          name="Website for Packages"
          icon={Icons.diamond()}
          description="A website to browse, find and rate community packages."/>

        <Pages.Roadmap.Feature
          name="Image Optimization"
          icon={Icons.diamond()}
          description="During the build process optimize images automatically."/>

        <Pages.Roadmap.Feature
          name="Application Structure Diagram"
          icon={Icons.diamond()}
          description={
            "Construct an interactive diagram of application structur" \
            "e containing routes, stores, providers and components. "
          }/>
      </Pages.Roadmap.Version>

      <Pages.Roadmap.Version name="0.6.0">
        <Pages.Roadmap.Feature
          name="Styling Improvements"
          icon={Icons.checkmark()}
          description="Allow multiple style, arguments, nesting, if and case expressions."/>

        <Pages.Roadmap.Feature
          name="String Interpolation"
          icon={Icons.checkmark()}
          description="Allow interpolating expressions into strings."/>

        <Pages.Roadmap.Feature
          name="Safe Operators"
          icon={Icons.checkmark()}
          description="Safe operators makes working with Maybe easier."/>
      </Pages.Roadmap.Version>

      <Pages.Roadmap.Version name="0.5.0">
        <Pages.Roadmap.Feature
          name="Generted Code Optimization"
          icon={Icons.checkmark()}
          description="Minify and mangle compiled code to reduce file size."/>

        <Pages.Roadmap.Feature
          name="Partial Function Application"
          icon={Icons.checkmark()}
          description="Implemented partial application of functions."/>

        <Pages.Roadmap.Feature
          name="CSS Property Name Checking"
          icon={Icons.checkmark()}
          description="Implemented compile error for unkown CSS property names."/>
      </Pages.Roadmap.Version>

      <Pages.Roadmap.Version name="0.4.0">
        <Pages.Roadmap.Feature
          name="Selective Compilation (Dead Code Elimination)"
          icon={Icons.checkmark()}
          description="Only compile the entities that are being used."/>

        <Pages.Roadmap.Feature
          name="For Expression"
          icon={Icons.checkmark()}
          description={
            "For expressions allows iterating over maps, sets and arr" \
            "ays."
          }/>

        <Pages.Roadmap.Feature
          name="JavaScript Interpolation"
          icon={Icons.checkmark()}
          description="Allows calling Mint code from inlined javascript."/>

        <Pages.Roadmap.Feature
          name="Environment Variables"
          icon={Icons.checkmark()}
          description="Allows inlining of environment variables specified in a file."/>
      </Pages.Roadmap.Version>

      <Pages.Roadmap.Version name="0.3.0">
        <Pages.Roadmap.Feature
          description="Language feature for defining Algebraic Data Types"
          name="ADTs"
          icon={Icons.checkmark()}/>

        <Pages.Roadmap.Feature
          description="Control structures for asynchronous task handling"
          name="Sequence & Parallel"
          icon={Icons.checkmark()}/>

        <Pages.Roadmap.Feature
          name="Progressive Web Application Support"
          icon={Icons.checkmark()}
          description={
            "Automatically generate files for basic PWA features (ser" \
            "vice-worker, manifest, icons)."
          }/>
      </Pages.Roadmap.Version>

      <Pages.Roadmap.Version name="0.2.0">
        <Pages.Roadmap.Feature
          description="Accessing items in array with brackets"
          name="Array access"
          icon={Icons.checkmark()}/>

        <Pages.Roadmap.Feature
          description="Syntax for defining Html fragments"
          name="Html fragments"
          icon={Icons.checkmark()}/>
      </Pages.Roadmap.Version>

      <Pages.Roadmap.Version name="0.1.0">
        <Pages.Roadmap.Feature
          description="The language itself."
          name="Language Basics"
          icon={Icons.checkmark()}>

          <Pages.Roadmap.Feature
            name="Parser"
            description="Converts source code to an AST."/>

          <Pages.Roadmap.Feature
            name="Formatter"
            description="Reproduces source code from an AST."/>

          <Pages.Roadmap.Feature
            name="Type Checker"
            description="Walks the AST and type checks the application."/>

          <Pages.Roadmap.Feature
            name="Compiler"
            description="Compiles an application to JavaScript."/>

        </Pages.Roadmap.Feature>

        <Pages.Roadmap.Feature
          description="The features of the language."
          name="Language Features"
          icon={Icons.checkmark()}>

          <Pages.Roadmap.Feature
            name="Components"
            description={
              "Define components with type checked properties and state" \
              "."
            }/>

          <Pages.Roadmap.Feature
            name="Styling"
            description="Styling HTML tags in a dynamic way without conflicts."/>

          <Pages.Roadmap.Feature
            name="Routing"
            description="Define routes in a declarative way."/>

          <Pages.Roadmap.Feature
            name="Computations"
            description={
              "Handle synchronous (JSON decoding) and asynchronous (HTT" \
              "P Request) computations that might fail."
            }/>

          <Pages.Roadmap.Feature
            name="State"
            description="Manage global state with Stores."/>

          <Pages.Roadmap.Feature
            name="Subscriptions"
            description={
              "Subscribe to global events (mouse, window) using provide" \
              "rs."
            }/>

          <Pages.Roadmap.Feature
            name="JavaScript Interopability"
            description="Simply call out to JavaScript when you need to."/>

        </Pages.Roadmap.Feature>

        <Pages.Roadmap.Feature
          name="Documentation Generator"
          icon={Icons.checkmark()}
          description={
            "Generate beautiful documentation for your project, inclu" \
            "ding dependencies."
          }/>

        <Pages.Roadmap.Feature
          name="Production Builder"
          icon={Icons.checkmark()}
          description={
            "The process of building the production version of the ap" \
            "plication."
          }>

          <Pages.Roadmap.Feature
            name="Icon Generator"
            description={
              "Generate icons for most common use cases (favicon, appli" \
              "cation icons)."
            }/>

          <Pages.Roadmap.Feature
            name="Bundling and Minification"
            description={
              "Compile and minify the application into a single JavaScr" \
              "ipt file."
            }/>

        </Pages.Roadmap.Feature>

        <Pages.Roadmap.Feature
          name="Development Server"
          icon={Icons.checkmark()}
          description={
            "A server that automatically formats code and reloads the" \
            " application when any of the source files change."
          }/>

        <Pages.Roadmap.Feature
          name="Package Manager"
          icon={Icons.checkmark()}
          description={
            "Install external sources (packages) directly from Git re" \
            "positories."
          }/>

        <Pages.Roadmap.Feature
          name="Testing"
          icon={Icons.checkmark()}
          description={
            "Language feature for easily testing modules, packages, c" \
            "omponents or the whole application."
          }/>

        <Pages.Roadmap.Feature
          name="Command Line Interface"
          icon={Icons.checkmark()}
          description={
            "A binary that allows to access the features of the langu" \
            "age."
          }/>
      </Pages.Roadmap.Version>
    </Page>
  }
}
