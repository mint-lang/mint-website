async component Reference {
  /* The contents. */
  property children : Array(Html) = []

  style root {
    grid-template-columns: 200px auto 1fr;
    margin-bottom: auto;
    grid-gap: 50px;
    display: grid;
  }

  style link (active : Bool) {
    text-decoration: none;
    line-height: 1.5;
    display: block;

    if active {
      color: seagreen;
    } else {
      color: inherit;
    }

    &:hover {
      text-decoration: underline;
    }
  }

  style divider {
    border-right: 2px dotted #BBB;
  }

  fun render : Html {
    <div::root>
      <div>
        for reference of Application.REFERENCE {
          let pagePath =
            "/reference/#{reference.path}"

          <a::link(Window.isActiveURL(pagePath)) href={pagePath}>
            reference.name
          </a>
        }
      </div>

      <div::divider/>

      <Content instrument={true}>
        children
      </Content>
    </div>
  }
}
