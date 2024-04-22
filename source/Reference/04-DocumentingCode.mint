module References {
  const DOCUMENTING_CODE =
    <<#MARKDOWN(highlight)
    # Documenting code

    Documentation for API features can be written in code comments directly
    preceding the definition of the respective feature (for example, a module
    or a function).

    By default, all entities are considered part of the API documentation.

    ## Association

    Documentation comments must be positioned directly above the definition of
    the documented feature. Usually, multi-line comments are used for this
    purpose. Whitespace between the documentation comment and the entity are
    allowed.

    ```mint
    // This comment is not associated with the module.

    /*
    First line of documentation for the module.
    Second line of documentation for the module.
    */
    module Unicorn {
    }
    ```

    ## Format

    Documentation comments support [Markdown](https://daringfireball.net/projects/markdown/)
    formatting.
    MARKDOWN
}
