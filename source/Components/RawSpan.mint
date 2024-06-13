component RawSpan {
  // The raw HTML to render.
  property html : String

  // Renders the component.
  fun render : Html {
    <span dangerouslySetInnerHTML={`{__html: #{html}}`}/>
  }
}
