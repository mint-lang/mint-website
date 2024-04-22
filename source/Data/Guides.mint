module Data {
  const GUIDES =
    defer {
      pages:
        [
          {
            contents: defer Guides.INTRODUCTION,
            name: "Introduction",
            path: ""
          },
          {
            contents: defer Guides.GETTING_STARTED,
            name: "Getting Started",
            path: "getting-started"
          }
        ],
      categories:
        [
          {
            name: "Cheatsheets",
            path: "cheatsheets",
            pages:
              [
                {
                  contents: defer Guides.Guides.CHEATSHEETS_ELM,
                  name: "Mint for Elm users",
                  path: "elm"
                }
              ]
          },
          {
            name: "CLI",
            path: "cli",
            pages:
              [
                {
                  contents: defer Guides.CLI_COMMANDS,
                  name: "Commands",
                  path: "commands"
                },
                {
                  contents: defer Guides.CLI_INIT,
                  name: "Init",
                  path: "init"
                },
                {
                  contents: defer Guides.CLI_CLEAN,
                  name: "Clean",
                  path: "clean"
                },
                {
                  contents: defer Guides.CLI_FORMAT,
                  name: "Format",
                  path: "format"
                },
                {
                  contents: defer Guides.CLI_LINT,
                  name: "Lint",
                  path: "lint"
                }
              ]
          }
        ]
    }
}
