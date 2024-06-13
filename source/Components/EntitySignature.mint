component EntitySignature {
  connect Application exposing { isMobile }

  // The entity to use for the signature.
  property entity : Entity

  // The name of the parent entity.
  property parent : String

  // Styles for the root element.
  style root {
    border-bottom: 1px solid var(--border-color);
    padding-bottom: 5px;
    margin-bottom: 10px;

    font-optical-sizing: auto;
    font-family: "Fira Code";
    font-weight: 400;
    font-size: 16px;

    if entity.broken {
      display: block;
    } else {
      flex-wrap: wrap;
      display: flex;
    }

    if isMobile {
      white-space: pre-wrap;
    } else {
      white-space: pre;
    }

    a {
      text-decoration: none;
      color: inherit;

      &:hover {
        color: var(--color-mintgreen);
        text-decoration: underline;
      }
    }

    .keyword {
      color: var(--color-darkmagenta);
    }

    .regexp {
      color: var(--color-darkorange);
    }

    .namespace,
    .property {
      color: var(--color-indianred);
    }

    .type {
      color: var(--color-royalblue);
    }

    .string {
      color: var(--color-mintgreen);
    }

    .comment {
      color: var(--color-comment);
    }

    .number {
      color: var(--color-crimson);
    }
  }

  // Style for an argument.
  style argument (indented : Bool) {
    if indented {
      padding-left: 20px;
    }
  }

  // Renders the component.
  fun render : Html {
    let args =
      entity.arguments or []

    let head =
      <>
        <span class="keyword">
          ApiDocs.kindToKeyword(entity.kind)
        </span>

        <a href="/api/#{parent}##{entity.name}">
          entity.name
        </a>
      </>

    let type =
      if let Just(type) = entity.type {
        <>
          <span>" : "</span>
          <RawSpan html={type}/>
        </>
      }

    let arguments =
      for argument, index of args {
        <div::argument(entity.broken)>
          <span>
            argument.name
          </span>

          if let Just(type) = argument.type {
            <>
              <span>" : "</span>
              <RawSpan html={type}/>
            </>
          }

          if let Just(value) = argument.value {
            <>
              <span>" = "</span>
              <RawSpan html={value}/>
            </>
          }

          if index < (Array.size(args) - 1) {
            <span>", "</span>
          }
        </div>
      }

    let hasArguments =
      !Array.isEmpty(arguments)

    <div::root>
      if entity.broken {
        if hasArguments {
          <>
            <div>
              head
              " ("
            </div>

            arguments

            <div>
              ")"
              type
            </div>
          </>
        } else {
          <div>
            head
            type
          </div>
        }
      } else {
        <>
          head

          if hasArguments {
            <>
              " ("
              arguments
              ")"
            </>
          }

          type
        </>
      }

      if let Just(value) = entity.value {
        <div>
          <span>" = "</span>
          <RawSpan html={value}/>
        </div>
      }
    </div>
  }
}
