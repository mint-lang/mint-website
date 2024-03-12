component Snippet {
  /* The snippet to display. */
  property children : Array(Html) = []

  /* Styles of the root element. */
  style root {
    min-width: 600px;
  }

  /* Renders the component. */
  fun render : Html {
    <Content>
      <pre::root>
        <code>
          children
        </code>
      </pre>
    </Content>
  }
}
