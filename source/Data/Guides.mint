module Data {
  const GUIDES =
    defer {
      pages:
        [
          { contents: defer Guides.INTRODUCTION, name: "Introduction", path: "" },
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
                  contents: defer Guides.CHEATSHEETS_ELM,
                  name: "Mint for Elm users",
                  path: "elm"
                }
              ]
          },
          {
            name: "Migration Guides",
            path: "migration-guides",
            pages:
              [
                {
                  contents: defer Guides.MIGRATION_GUIDES_0_20_0,
                  name: "0.19.0 ⇢ 0.20.0",
                  path: "0.19.0⇢0.20.0"
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
                { contents: defer Guides.CLI_BUILD, name: "build", path: "build" },
                { contents: defer Guides.CLI_DOCS, name: "docs", path: "docs" },
                {
                  contents: defer Guides.CLI_FORMAT,
                  name: "format",
                  path: "format"
                },
                { contents: defer Guides.CLI_INIT, name: "init", path: "init" },
                { contents: defer Guides.CLI_LINT, name: "lint", path: "lint" },
                {
                  contents: defer Guides.CLI_CLEAN,
                  name: "tool clean",
                  path: "clean"
                }
              ]
          }
        ]
    }
}
