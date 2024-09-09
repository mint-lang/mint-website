async component Pages.Home {
  // Renders the component.
  fun render : Html {
    <div>
      <Hero/>
      <Divider/>

      <Section
        title="Styling"
        flipped={true}
        snippet={
          <<#MARKDOWN(highlight)
          ```mint
          component TodoItem {
            property color = "#333"
            property done = false
            property label = ""

            style label {
              font-weight: bold;
              color: \#{color};
              flex: 1;

              if (done) {
                text-decoration: line-through;
              }
            }

            fun render {
              <div>
                <span::label>
                  label
                </span>

                <Icon.Checkmark/>
                <Icon.Trash/>
              </div>
            }
          }
          ```
          MARKDOWN
        }
      >
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

        <a href="/reference/styling/introduction">"Full Styling Reference"</a>
      </Section>

      <Divider/>

      <Section
        title="Stores & State"
        snippet={
          <<#MARKDOWN(highlight)
          ```mint
          type Todo {
            label : String,
            done : Bool
          }

          store Todos {
            state items = [] of Todo

            fun add (todo : Todo) {
              next { items: Array.push(items, todo) }
            }

            fun delete (todo : Todo) {
              next { items: Array.delete(items, todo) }
            }
          }

          component TodoList {
            connect Todos exposing { add, delete, items }

            fun render : Html {
              <div>
                for item of items {
                  "Item rendered here..."
                }
              </div>
            }
          }
          ```
          MARKDOWN
        }
      >
        <<#MARKDOWN
        In the JavaScript world you can choose from a plethora of options for
        state management ([~4000 packages on NPM]), in Mint there are **stores**
        that provide the same functionality out of the box:

        - Stores can be **connected to components** to be **re-rendered**
          when data changes
        - Stores are **globally accessible** from anywhere
        - Components have their own state

        [~4000 packages on NPM]: https://www.npmjs.com/search?q=keywords:state
        MARKDOWN

        <a href="/reference/stores">"Stores Reference"</a>
      </Section>

      <Divider/>

      <Trivia>
        "It takes "

        <b><u>"2 seconds"</u></b>

        " to build a Mint application with "

        <b><u>"~80,000"</u></b>

        " lines of code."
      </Trivia>

      <Divider/>

      <Section
        title="Routing"
        snippet={
          <<#MARKDOWN(highlight)
          ```mint
          routes {
            / {
              Application.setPage(Page::Home)
            }

            /blog {
              Application.setPage(Page::Blog)
            }

            /blog/:slug (slug : String) {
              await Posts.load(slug)
              Application.setPage(Page::Post)
            }

            * {
              Application.setPage(Page::NotFound)
            }
          }
          ```
          MARKDOWN
        }
      >
        <<#MARKDOWN
        Mint makes routing simple by offering language features to define
        routes and handle their parameters easily.

        - Route parameters are type checked and decoded to Mint values
        - Links and navigation handled automatically
        MARKDOWN

        <a href="/reference/routes">"Routing Reference"</a>
      </Section>

      <Divider/>

      <Section
        title="Interoperability"
        flipped={true}
        snippet={
          <<#MARKDOWN(highlight)
          ```mint
          module MyFunctions {
            fun alert(message : String) : Promise(Void) {
              `
              (new Promise((resolve) => {
                alert(\#{message})
                resolve()
              })()
              `
            }

            fun decode : Maybe(TodoItem) {
              let object =
                `{ label: "Check out Mint!", done: false }`

              Result.toMaybe(decode object as TodoItem)
            }
          }
          ```
          MARKDOWN
        }
      >
        <<#MARKDOWN
        Interfacing with JavaScript is super easy using the built-in language
        features:

        - `encode` - converts a typed value into a JavaScript object
        - `decode` - converts a JavaScript object into a typed value
        - #{<code>"`...`"</code>} - inlines JavaScript with interpolations
        MARKDOWN

        <a href="/reference/javascript/inlining">"Inlining Reference"</a>
      </Section>

      <Divider/>

      <Trivia>
        "Mint is written in the "

        <b><a href="https://crystal-lang.org/">"Crystal"</a></b>

        " programming language."
      </Trivia>

      <Divider/>

      <Section
        title="Batteries Included"
        snippet={
          <<#CLI(highlight)
          ```bash
          $ mint init my-awesome-project

          Mint - Initializing a new project
          ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
          ⚙ Creating directory structure...
          ⚙ Writing initial files...
          ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
          All done in 2.231ms!

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

          $ mint start --auto-format

          Mint - Running the development server
          ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
          ⚙ Ensuring dependencies... 181μs
          ⚙ Parsing files... 2.608ms
          ⚙ Development server started on http://127.0.0.1:3000/
          ```
          CLI
        }
      >
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

        <a href="/guides/cli/commands">"CLI Reference"</a>
      </Section>
    </div>
  }
}
