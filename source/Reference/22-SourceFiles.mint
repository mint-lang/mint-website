module References {
  const SOURCE_FILES =
    <<#MARKDOWN(highlight)
    # Source Files

    In Mint there is no feature to import from one file to another, everything
    in every file is available to all other files. This is mainly to **reduce
    cognitive load** when trying to use something from another file.

    The files that are part of the project are defined in the `mint.json` file:

    ```json
    {
      "source-directories": [
        "source"
      ],
      "test-directories": [
        "tests"
      ]
    }
    ```

    The files in the `source-directories` field are loaded in all cases (
      development server, production build, tests) where the files in the
    `test-directories` field are loaded only for tests.
    MARKDOWN
}
