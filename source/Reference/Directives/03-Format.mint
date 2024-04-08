module References {
  const DIRECTIVES_FORMAT =
    <<#MARKDOWN(highlight)
    # Format Directive

    The `@format` directive returns the formatted string version of the code
    it's given and the result of the code in a tuple `Tuple(a, String)`.

    This is created to make it easy to display the source and the result of an
    example Mint code:

    ```mint
    let {result, code} =
      @format {
        <div>
          "Hello There!"
        </div>
      }

    <div>
      result

      <pre>
        <code>
          code
        </code>
      </pre>
    </div>
    ```

    MARKDOWN
}
