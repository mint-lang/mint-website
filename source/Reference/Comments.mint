async component Reference.Comments {
  fun render : Html {
    <<#MARKDOWN
    ## Comments

    Mint supports single-line and multi-line comments:

    ```mint
    // Set a variable.
    let name =
      "Joe"

    /*
    Convert it to upper case.
    => JOE
    */
    String.toUpperCase(name)
    ```
    MARKDOWN
  }
}
