module References {
  const HTML =
    <<#MARKDOWN(highlight)
    # Html

    Mint has built-in syntax for create [Virtual DOM](https://en.wikipedia.org/wiki/Virtual_DOM)
    Nodes with a HTML like syntax.

    ## Tags

    Tags work a look like HTML tags, with the difference that self-closing tags
    have the slash `/` after the tagname and not before.

    ```mint
    <div>"Hello There"</div>

    <br/> // Instead of </br>

    <select>
      <option>"Option 1"</option>
    </select>
    ```

    ## Attributes

    In addition to the string attribute, Mint supports other ways to pass values
    to attributes (depending on the type):

    ```mint
    <div class="container"></div>

    <MyComponent
      expression={anyVariableOrValue}
      array=["Item1", "Item2"]
      html=<>"Hello World!"</>
      string="Hello World!"
    />
    ```

    The following uses are **not supported**:

    * Unqouted attributes `type=checkbox`
    * Naked attributes `disabled`

    ## Children

    Any tag or component can have child items. Unlike in HTML where the contents
    are only text or other tags, in Mint child items can be **expressions**
    but they must evaluate to `Html`, `String` or an array of those.

    Here are some examples:

    ```mint
    <div>
      // A variable containing Html (Html)
      htmlVariable

      // A normal string (String)
      "String Value"

      // An array of strings (Array(String))
      ["Item 1", "Item 2"]

      // Or an expression... (String)
      if true {
        "True"
      } else {
        "false"
      }

      // Which includes other Html tags (Html)
      <span>"I'm a span!"</span>

      // Or a block (String)
      {
        let name = "Joe"

        "Hello \#{name}!"
      }
    </div>
    ```

    ### Whitespace

    It's important to know that **you control the whitespace** between and
    around of elements. For example this:

    ```mint
    <div>
      "Hello"
      "World!"
    </div>
    ```

    Will render as `<div>HelloWorld!</div>` without any whitespace. To fix it
    you need to add a space in either the end of the first string or the start
    of the second string:

    ```mint
    <div>
      "Hello "
      "World!"
    </div>
    ```

    ## Fragments

    If you need to group together some content but you don't want to use an
    element then you can use a **fragment** (will be the type `Html`):

    ```mint
    <>
      <span>"I'm a span!"</span>
      <strong>"I'm bold!"</strong>
    </>
    ```

    or alternatively an array of elements (will be the type `Array(Html)`):

    ```mint
    [
      <span>"I'm a span!"</span>,
      <strong>"I'm bold!"</strong>
    ]
    ```
    MARKDOWN
}
