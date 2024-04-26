module Lessons {
  const HTML_TAGS =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                fun render : Html {
                  <div>
                    <h1>"A title..."</h1>
                    <strong>"Some bold text!"</strong>
                    <br/>

                    <a href="https://mint-lang.com" target="_blank">
                      "Mint Website"
                    </a>

                    <ul>
                      <li>"Item 1"</li>
                      <li>"Item 2"</li>
                      <li>"Item 3"</li>
                    </ul>

                    <fieldset>
                      <input type="checkbox" checked={true}/>
                      <label>"Checkbox"</label>
                    </fieldset>

                    <div style="color: purple;">"I am purple"</div>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Mint mostly supports writing HTML as is, and you can use any tags you
        would like. It uses a **virtual DOM** to render the defined tags to
        the document (currently [Preact](https://preactjs.com/), but it might
        change in the future).

        There are some changes and additions which you should be aware of:

        * Text needs to be specified as strings, because it allows you to
          control whitespace explicitly.

        * You can use expressions inside the HTML tags, like `if` and `for`.
        * Attributes cannot be naked, so they must have a value.

        Attributes are usually strings, but there are some exceptions:

        * Anything starting with `on` is considered an event, which takes
          a function instead of a string (`onClick={() { Window.alert("Hello!") }}`).

        * `readonly`, `disabled` and `checked` takes a `Bool`
          (`checked={true}`).

        * `style` can be a string or `Map(String, String)`.
        * `className` cannot be used, use `class` instead.
        * `ref` attribute is forbidden.
        MARKDOWN
    }
}
