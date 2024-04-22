module Lessons {
  const LANGUAGE_HERE_DOCUMENTS =
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
                  <>
                    <pre>
                      <<-TEXT
                      This is a here document, can be multiple lines,
                      leading white space preserved.
                      TEXT
                    </pre>

                    <hr/>

                    <pre>
                      <<~TEXT
                      This is a here document, can be multiple lines,
                      leading white space removed.
                      TEXT
                    </pre>

                    <<#MARKDOWN
                    # Heading

                    This is a paragraph.

                    * a list item
                    * a list item
                    MARKDOWN
                  </>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MD(highlight)
        [Here documents] can be used for writing blocks of text or Markdown,
        and it looks like this:

        ```mint
        <<-IDENTIFIER
          Some Text...
        IDENTIFIER
        ```

        Everything inside the `IDENTIFIER` is part of the document so it can be
        used to preserve whitespace like this `  Some Text...`, but sometimes
        it's necessary to remove the leading whitespace to do that you can
        write this instead:

        ```mint
        <<~IDENTIFIER
          Some Text...
        IDENTIFIER
        ```

        Which will result in this `Some Text...`. You can even pre-compile
        Markdown (as `Html`):

        ```mint
        <<#MARKDOWN
        # This is a heading...
        MARKDOWN
        ```

        Check out the [reference page] to learn more.

        [Here documents]: https://en.wikipedia.org/wiki/Here_document
        [reference page]: /reference/here-documents
        MD
    }
}
