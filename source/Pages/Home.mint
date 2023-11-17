async component Pages.Home {
  style hero {
    grid-template-columns: 1fr auto;
    align-items: center;
    grid-gap: 100px;
    display: grid;

    h1 {
      font-family: Courgette;
      line-height: 1.25;
      font-size: 38px;
      margin: 0;
    }

    div > p {
      line-height: 1.5;
      font-size: 20px;
      margin: 0;
    }

    button {
      background: seagreen;
      border-radius: 4px;
      padding: 15px 30px;
      margin-top: 20px;
      border: 0;

      font-family: 'Noto Sans';
      font-weight: 600;
      font-size: 20px;
      color: white;
    }

    div > svg {
      margin-bottom: 40px;
      display: block;
      height: auto;
      width: 300px;

      path {
        fill: seagreen;
      }
    }
  }

  /* Renders the component. */
  fun render : Html {
    <div>
      <div::hero>
        <div>
          @svg(../../assets/hero.svg)
          <h1>"The programming language for writing single page applications"</h1>

          <p>
            <<#MARKDOWN
          Mint has all the tools you need to write **error free**, **easily
          readable** and **maintainable** applications in **record time**.
          MARKDOWN
          </p>

          <button>"Getting Started"</button>
        </div>

        <Snippet title={"Counter.mint"}>
          @highlight-file(../../assets/examples/Component.mint)
        </Snippet>
      </div>

      <Divider/>

      <Section
        title="Styling"
        snippet={
          <Snippet title="Styling.mint">
            @highlight-file(../../assets/examples/Styling.mint)
          </Snippet>
        }>

        <<#MARKDOWN
          Styling elements in traditional single page applications is done through
          a library which restricts what is possible, so in Mint styling is a
          feature of the language and much more powerful than any library cloud
          ever be.

          - Style elements directly with **CSS** using **style blocks**
          - Infinitely nest **sub selectors** and **media queries**
          - Use **`if`** and **`case`** to apply styles conditionally
          - Interpolate values with **`\#{...}`**
        MARKDOWN

        <a href="/">
          "Full Styling Reference"
        </a>

      </Section>

      <Divider/>

      <Section
        title="Stores & State"
        snippet={
          <Snippet title="Stores.mint">
            @highlight-file(../../assets/examples/Stores.mint)
          </Snippet>
        }>

        <<#MARKDOWN
          In the JavaScript world you can choose from a plethora of options for
          state management (~4000 packages on NPM), in Mint there are **stores**
          that provide the same functionality out of the box:

          - Stores can be **connected to components** to **re-rendered** when data changes
          - Stores are **globally accessible** from anywhere
          - Components have their own store like state management
        MARKDOWN

        <a href="/">
          "Stores & State Reference"
        </a>

      </Section>

      <Divider/>

      <Trivia>
        "It takes "

        <b>
          <u>"2 seconds"</u>
        </b>

        " to build a Mint application with "

        <b>
          <u>"~80,000"</u>
        </b>

        " lines of code."
      </Trivia>

      <Divider/>

      <Section
        title="Routing"
        snippet={
          <Snippet title="Routing.mint">
            @highlight-file(../../assets/examples/Routing.mint)
          </Snippet>
        }>

        <<#MARKDOWN
          Mint makes routing simple by offering language features to define
          routes and handle their parameters easily.

          - Links and navigation handled automatically
          - Route parameters are type checked
        MARKDOWN

        <a href="/">
          "Routing Reference"
        </a>

      </Section>

      <Divider/>

      <Section
        title="Interopability"
        snippet={
          <Snippet title="Interopability.mint">
            @highlight-file(../../assets/examples/Interopability.mint)
          </Snippet>
        }>

        <<#MARKDOWN
          Interfacing with JavaScript is super easy using the built-in language
          features:

          - **`encode`** - converts a typed value into a JavaScript object
          - **`decode`** - converts a JavaScript object into a typed value
          - **\`...\`** - inline JavaScript with interpolations
        MARKDOWN

        <a href="/">
          "Interopability Reference"
        </a>

      </Section>

      <Divider/>

      <Trivia>
        "Mint is written in the "

        <b>
          <a href="https://crystal-lang.org/">
            "Crystal"
          </a>
        </b>

        " programming language."
      </Trivia>

      <Divider/>

      <Section
        title="Batteries Included"
        snippet={
          <Snippet title="CLI">
            <<~CLI
              $ mint init my-awesome-project

              Mint - Initializing a new project
              ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
              ⚙ Creating directory structure...
              ⚙ Writing initial files...
              ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
              All done in 2.231ms!

              $ mint start --auto-format

              Mint - Running the development server
              ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
              ⚙ Ensuring dependencies... 181μs
              ⚙ Parsing files... 2.608ms
              ⚙ Development server started on http://127.0.0.1:3000/

              $ mint install

              Mint - Installing dependencies
              ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
              ⚙ Constructing dependency tree...
                ✔ Cloned mint-codemirror (https://github.com/mint...)

              ⚙ Resolving dependency tree...
                ◈ mint-codemirror ➔ 6.0.0

              ⚙ Copying packages...
              ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
              All done in 2.75s!
            CLI
          </Snippet>
        }>

        <<#MARKDOWN
          All the tooling required to make single page applications are packed
          in a single binary:

          - Development Server
          - Code Formatter
          - Test Runner
          - Package Manager
          - Documentation Generator
          - Language Server
          - Build Tool
        MARKDOWN

        <a href="/">
          "CLI Reference"
        </a>

      </Section>
    </div>
  }
}
