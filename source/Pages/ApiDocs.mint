async component Pages.ApiDocs {
  connect Application exposing { isTablet }

  // The top level entities to display in the sidebar.
  property entities : Array(TopLevelEntity)

  // The top level entity to display.
  property entity : TopLevelEntity

  // Style for the title.
  style title {
    border-bottom: 3px double var(--border-color);
    margin-bottom: 15px;

    font-optical-sizing: auto;
    font-family: "Fira Code";
    font-weight: 400;
    font-size: 26px;

    > span {
      color: var(--color-darkmagenta);
    }
  }

  // Style for an entity.
  style entity (active : Bool) {
    margin-top: 30px;

    + * {
      margin-top: 45px;
    }

    if active {
      outline: 2px dashed var(--color-mintgreen);
      outline-offset: 15px;
      border-radius: 1px;
    }
  }

  // Style for an entity badge.
  style badge (background : String) {
    place-content: center;
    display: inline-grid;

    background-color: #{background};
    color: var(--background-color);
    border-radius: 2px;

    text-align: center;
    font-size: 0.60em;
    font-weight: 600;

    position: relative;
    top: 1px;

    height: 16px;
    width: 16px;
  }

  // Renders a badge based on the kind of the entity.
  fun renderBadge (kind : Number) {
    let {char, color} =
      ApiDocs.kindToBadge(kind)

    <span::badge(color)>char</span>
  }

  // Renders the component.
  fun render : Html {
    let url =
      entity.link or entity.name

    let categories =
      {
        name: "Top Level Entities",
        items:
          for item of entities {
            {
              mobilePrefix: "[#{ApiDocs.kindToBadge(item.kind)[0]}] ",
              href: "/api/#{item.link or item.name}",
              icon: renderBadge(item.kind),
              searchValue: item.name,
              content: <>item.name</>
            }
          }
      }

    let entities =
      if let Just(entities) = entity.entities {
        Array.sortBy(entities, .name(Entity))
      }

    let tableOfContents =
      for entity of entities {
        {
          icon: renderBadge(entity.kind),
          content: <>entity.name</>,
          href: "##{entity.name}",
          level: 1
        }
      }

    let hash =
      Window.url().hash

    let content =
      <div>
        <h1::title>
          if let Just(flags) = entity.flags {
            for flag of flags {
              <span>
                case flag {
                  0 => "global "
                  1 => "async "
                  => ""
                }
              </span>
            } when {
              flag < 2
            }
          }

          <span>ApiDocs.kindToKeyword(entity.kind)</span>
          entity.name
        </h1>

        if let Just(description) = entity.description {
          <Content raw={description}/>
        }

        for item of entities {
          <div::entity(hash == "##{item.name}")>
            <a name={item.name}/>
            <EntitySignature entity={item} parent={url}/>

            if let Just(description) = item.description {
              <Content raw={description} fontSize={16}/>
            } else {
              <div style="margin-bottom: -20px;"/>
            }
          </div>
        }
      </div>

    <DocumentLayout
      tableOfContents={tableOfContents}
      contentKey={entity.name}
      items=[categories]
      content={content}
    />
  }
}
