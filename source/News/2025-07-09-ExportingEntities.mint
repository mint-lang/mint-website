module News {
  const EXPORTING_ENTITIES =
    {
      subtitle: "Mint 0.26.0 Released",
      title: "Exporting Entities",
      time: Time.utc(2025, 7, 9),
      author: "Gusztáv Szikszai",
      contents:
        defer {
          let httpExample =
            <SimpleIde
              orientation="vertical"
              previewHeight="80px"
              contents={
                <<~MINT
                component Main {
                  state progress : Http.Progress = Http.Progress.Uncalculable

                  fun render {
                    <div>
                      <button
                        onClick={() {
                          let file =
                            await File.select("*")

                          let data =
                            FormData.empty()
                            |> FormData.addFile("file", file)

                          Http.post("https://mint-lang.com/data/upload")
                          |> Http.formDataBody(data)
                          |> Http.send(
                            Uid.generate(),
                            Promise.never1,
                            (progress : Http.Progress) {
                              next { progress: progress }
                            })
                        }}>
                        "Select file to upload."
                      </button>

                      <br/>

                      case progress {
                        Progress(percent) => "\#{Math.round(percent * 100, 2)}%"
                        Uncalculable => "Uncalculable"
                      }
                    </div>
                  }
                }
                MINT
              }
            />

          <<#MARKDOWN(highlight)
          Mint is a type-safe programming language for writing single page
          applications. In this post, we will take a look at what's new in the
          release `0.26.0`.

          In this release we added a feature to export entities in the
          generated bundle, some additions to the standard library and
          some bug fixes.

          ## Exporting entities

          Traditionally Mint is for creating whole single page applications
          which results in a bundle with the following files:

          - `index.html` - the HTML to serve for every route
          - `index.js` - the entry point for the application
          - `index.css` - the styles
          - `__mint__/*` - the other bundles and assets

          One only has to statically serve these files and to make sure that
          the server serves the `index.html` for every route that doesn't
          match a file. But it was not possible to use separate parts of Mint
          code in an existing code base which mean that it was only viable for
          green field projects.

          With this release it is possible to export some types of entities
          from the resulting `index.js` file using the `--export` flag:

          ```bash
          mint build \
            --export MyModule.myFunction \
            --export MyComponent \
            --export Maybe.Just
          ```

          Then in JavaScript word you can just `import` the entities from the
          `index.js`:

          ```javascript
          import { MyModule_myFunction, MyComponent, Maybe_Just } from "./index.js";
          ```

          Functions and type variant constructors are working as you can expect:
          they can be called like a function. Components however are exported
          as an object with two methods: `render` and `cleanup`.

          Here is an example of using it with vanilla JavaScript:

          ```javascript
          import { MyComponent } from "./index.js";

          const root = document.querySelector("#root")

          // The render function takes the following parameters:
          // - the DOM element to render into
          // - the properties for the component
          // - the child elements for the component
          MyComponent.render(root, { name: "Joe" })

          // When you don't need it anymore call cleanup on the element.
          MyComponent.cleanup(root)
          ```

          Obviously there is no type safety is involved if you use this
          feature, so make sure that the values you pass to the exported
          entities are valid.

          Keep an eye out on this space for guides on how to integrate Mint
          with different frameworks this way.

          ## Http module update

          This release also have a small update to the `Http` module. We added
          callbacks for download and upload progress reporting and automatic
          parsing of form data responses.

          Here is an example of upload progress reporting:

          #{httpExample}

          ## What's next?

          We continue on fixing bugs and issues that come up and working on
          GitHub issues before 1.0.0.

          ---

          These were just the highlights of the release, make sure to read the
          full release notes:
          [`0.26.0`](https://github.com/mint-lang/mint/releases/tag/0.26.0),
          MARKDOWN
        }
    }
}
