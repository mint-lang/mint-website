module References {
  const HERE_DOCUMENTS =
    <<#MARKDOWN(highlight)
    # Here Documents

    A [here document](https://en.wikipedia.org/wiki/Here_document) can be
    useful for writing strings spanning over multiple lines. A here document is
    denoted by `<<-`, `<<~` or `<<#` followed by a here document identifier
    which is an **uppercase alphanumeric sequence** starting with a letter (and
    may include underscores). The here document starts in the following line and
    ends with the next line that contains only the here document identifier,
    optionally preceeded by whitespace.

    ```mint
    <<-XML
    <parent>
      <child />
    </parent>
    XML
    ```

    ## Preseving whitespace

    Leading whitespace is preserved as is.

    ```mint
    let content =
      <<-TEXT
      This is some content in the document.
      TEXT

    // String equvivalent is (notice the two spaces at the fornt)
    "  This is some content in the document."
    ```

    Type type of this here document is `String`.

    ## Removing leading whitespace

    Leading whitespace is removed from start of each line of the here document
    according to the number of leading whitespace in the line with the least
    amount of leading whitespace.

    ```mint
    let content =
      <<-TEXT
      This is some content in the document.
        This is indented by two spaces.
      TEXT

    // String equvivalent is
    "This is some content in the document.\n  This is indented by two spaces."
    ```

    Type type of this here document is `String`

    ## Markdown

    Leading whitespace is removed from start of each line of the here document
    according to the number of leading whitespace in the line with the least
    amount of leading whitespace. Contents are parsed as
    [Markdown](https://daringfireball.net/projects/markdown/) and rendered as
    `Html`.


    ```mint
    <<#MD
    # This will be a heading

    And this will be a paragraph.
    MD
    ```

    ### Highlighting Mint Code

    Any code snippet marked as `mint` can be syntax highlighted by adding the
    `highlight` flag to the here document:

    ~~~mint
    <<#MD(highlight)
    This is a paragraph.

    ```mint
    module Mint {
      // This will be syntax highlighted
    }
    ```
    MD
    ~~~

    All lines are turned into `span` HTML tags with the `className` of `line`
    and all tokens will be turned into `span` tags with the `className` of
    token. You are responsible for defining styles for the generated snippet.

    ```
    <span className="line">
      <span className="keyword">module</span>
      <span className="keyword">Mint</span>
      {
    </span>

    <span className="line">
      <span className="comment">  // This will be syntax highlighted</span>
    </span>

    <span className="line">
      }
    </span>
    ```
    MARKDOWN
}
