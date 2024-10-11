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
                { contents: defer Guides.CLI_BUILD, name: "build", path: "build" },
                { contents: defer Guides.CLI_DOCS, name: "docs", path: "docs" },
                {
                  contents: defer Guides.CLI_FORMAT,
                  name: "format",
                  path: "format"
                },
                { contents: defer Guides.CLI_INIT, name: "init", path: "init" },
                {
                  contents: defer Guides.CLI_INSTALL,
                  name: "install",
                  path: "install"
                },
                { contents: defer Guides.CLI_LINT, name: "lint", path: "lint" },
                { contents: defer Guides.CLI_START, name: "start", path: "start" },
                { contents: defer Guides.CLI_TEST, name: "test", path: "test" },
                {
                  contents: defer Guides.CLI_VERSION,
                  name: "version",
                  path: "version"
                },
                {
                  contents: defer Guides.CLI_TOOL_CLEAN,
                  name: "tool clean",
                  path: "tool-clean"
                },
                {
                  contents: defer Guides.CLI_TOOL_LOC,
                  name: "tool loc",
                  path: "tool-loc"
                },
                {
                  contents: defer Guides.CLI_TOOL_HIGHLIGHT,
                  name: "tool highlight",
                  path: "tool-highlight"
                },
                {
                  contents: defer Guides.CLI_TOOL_LS,
                  name: "tool ls",
                  path: "tool-ls"
                },
                {
                  contents: defer Guides.CLI_TOOL_LS_WEBSOCKET,
                  name: "tool ls-websocket",
                  path: "tool-ls-websocket"
                }
              ]
          }
        ]
    }
}
