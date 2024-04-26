module Data {
  const REFERENCE =
    defer {
      pages:
        [
          {
            contents: defer References.INTRODUCTION,
            name: "Introduction",
            path: ""
          },
          {
            contents: defer References.PROGRAM,
            name: "Program",
            path: "program"
          },
          {
            contents: defer References.COMMENTS,
            name: "Comments",
            path: "comments"
          },
          {
            contents: defer References.DOCUMENTING_CODE,
            name: "Documenting Code",
            path: "documenting-code"
          },
          {
            contents: defer References.LITERALS,
            name: "Literals",
            path: "literals"
          },
          {
            contents: defer References.HERE_DOCUMENTS,
            name: "Here Documents",
            path: "here-documents"
          },
          {
            contents: defer References.ARRAY,
            name: "Array",
            path: "array"
          },
          {
            contents: defer References.TUPLE,
            name: "Tuple",
            path: "tuple"
          },
          {
            contents: defer References.OPERATORS,
            name: "Operators",
            path: "operators"
          },
          {
            contents: defer References.HTML,
            name: "Html",
            path: "html"
          },
          {
            contents: defer References.FUNCTIONS,
            name: "Functions",
            path: "functions"
          },
          {
            contents: defer References.MODULES,
            name: "Modules",
            path: "modules"
          },
          {
            contents: defer References.CONSTANTS,
            name: "Constants",
            path: "constants"
          },
          {
            contents: defer References.EQUALITY,
            name: "Equality",
            path: "equality"
          },
          {
            contents: defer References.STATE_MANAGEMENT,
            name: "State Management",
            path: "state-management"
          },
          {
            contents: defer References.STATE_SETTER,
            name: "State Setter",
            path: "state-setter"
          },
          {
            contents: defer References.STORES,
            name: "Stores",
            path: "stores"
          },
          {
            contents: defer References.ROUTES,
            name: "Routes",
            path: "routes"
          },
          {
            contents: defer References.BLOCKS,
            name: "Blocks",
            path: "blocks"
          },
          {
            contents: defer References.LOCALE,
            name: "Locale",
            path: "locale"
          },
          {
            contents: defer References.ENVIRONMENT_VARIABLES,
            name: "Environment Variables",
            path: "environment-variables"
          },
          {
            contents: defer References.FIELD_ACCESS,
            name: "Field Access",
            path: "field-access"
          },
          {
            contents: defer References.SOURCE_FILES,
            name: "Source Files",
            path: "source-files"
          },
          {
            contents: defer References.PROVIDERS,
            name: "Providers",
            path: "providers"
          },
          {
            contents: defer References.TESTING,
            name: "Testing",
            path: "testing"
          }
        ],
      categories:
        [
          {
            name: "Types",
            path: "types",
            pages:
              [
                {
                  contents: defer References.TYPES_TYPE_SYSTEM,
                  name: "Type System",
                  path: "type-system"
                },
                {
                  contents: defer References.TYPES_CUSTOM_TYPES,
                  name: "Custom Types",
                  path: "custom-types"
                },
                {
                  contents: defer References.TYPES_BUILT_IN_TYPES,
                  name: "Built-in Types",
                  path: "built-in-types"
                }
              ]
          },
          {
            name: "Control Flow",
            path: "control-flow",
            pages:
              [
                {
                  contents: defer References.CONTROL_FLOW_IF_ELSE,
                  name: "if...else",
                  path: "if"
                },
                {
                  contents: defer References.CONTROL_FLOW_CASE,
                  name: "case",
                  path: "case"
                },
                {
                  contents: defer References.CONTROL_FLOW_FOR_OF,
                  name: "for...of",
                  path: "for"
                },
                {
                  contents: defer References.CONTROL_FLOW_DEFER,
                  name: "defer",
                  path: "defer"
                }
              ]
          },
          {
            name: "Components",
            path: "components",
            pages:
              [
                {
                  contents: defer References.COMPONENTS_INTRODUCTION,
                  name: "Introduction",
                  path: "introduction"
                },
                {
                  contents: defer References.COMPONENTS_PROPERTIES,
                  name: "Properties",
                  path: "properties"
                },
                {
                  contents: defer References.COMPONENTS_COMPUTED_PROPERTIES,
                  name: "Computed Properties",
                  path: "computed-properties"
                },
                {
                  contents: defer References.COMPONENTS_CONNECTING_TO_STORES,
                  name: "Connecting to Stores",
                  path: "connecting-to-stores"
                },
                {
                  contents: defer References.COMPONENTS_USING_PROVIDERS,
                  name: "Using Providers",
                  path: "using-providers"
                },
                {
                  contents: defer References.COMPONENTS_REFERENCING_ENTITIES,
                  name: "Referencing Entities",
                  path: "referencing-entities"
                },
                {
                  contents: defer References.COMPONENTS_LIFECYCLE_FUNCTIONS,
                  name: "Lifecycle Functions",
                  path: "lifecycle-functions"
                },
                {
                  contents: defer References.COMPONENTS_GLOBAL_COMPONENTS,
                  name: "Global Components",
                  path: "global-components"
                },
                {
                  contents: defer References.COMPONENTS_ASYNC_COMPONENTS,
                  name: "Async Components",
                  path: "async-components"
                }
              ]
          },
          {
            name: "Styling",
            path: "styling",
            pages:
              [
                {
                  contents: defer References.STYLING_INTRODUCTION,
                  name: "Introduction",
                  path: "introduction"
                },
                {
                  contents: defer References.STYLING_SELECTORS_AND_NESTING,
                  name: "Selectors and Nesting",
                  path: "selectors-and-nesting"
                },
                {
                  contents: defer References.STYLING_CONTROL_FLOW,
                  name: "Control Flow",
                  path: "control-flow"
                },
                {
                  contents: defer References.STYLING_INTERPOLATION,
                  name: "Interpolation",
                  path: "interpolation"
                },
                {
                  contents: defer References.STYLING_ARGUMENTS,
                  name: "Arguments",
                  path: "arguments"
                },
                {
                  contents: defer References.STYLING_INLINE_STYLES,
                  name: "Inline Styles",
                  path: "inline-styles"
                }
              ]
          },
          {
            name: "Directives",
            path: "directives",
            pages:
              [
                {
                  contents: defer References.DIRECTIVES_ASSET,
                  name: "@asset",
                  path: "asset"
                },
                {
                  contents: defer References.DIRECTIVES_SVG,
                  name: "@svg",
                  path: "svg"
                },
                {
                  contents: defer References.DIRECTIVES_FORMAT,
                  name: "@format",
                  path: "format"
                },
                {
                  contents: defer References.DIRECTIVES_INLINE,
                  name: "@inline",
                  path: "inline"
                },
                {
                  contents: defer References.DIRECTIVES_HIGHLIGHT,
                  name: "@highlight",
                  path: "highlight"
                },
                {
                  contents: defer References.DIRECTIVES_HIGHLIGHT_FILE,
                  name: "@highlight-file",
                  path: "highlight-file"
                }
              ]
          },
          {
            name: "JavaScript",
            path: "javascript",
            pages:
              [
                {
                  contents: defer References.JAVASCRIPT_INLINING,
                  name: "Inlining",
                  path: "inlining"
                },
                {
                  contents: defer References.JAVASCRIPT_DECODE,
                  name: "Decode",
                  path: "decode"
                },
                {
                  contents: defer References.JAVASCRIPT_ENCODE,
                  name: "Encode",
                  path: "encode"
                },
                {
                  contents: defer References.JAVASCRIPT_BUILTINS,
                  name: "Builtins",
                  path: "builtins"
                }
              ]
          }
        ]
    }
}
