component Main {
  state size : Tuple(Number, Number) = {Window.width(), Window.height()}

  use Provider.Resize {
    resizes:
      (event : Html.Event) { next { size: {Window.width(), Window.height()} } }
  }

  fun render {
    <div>"#{size[0]}, #{size[1]}"</div>
  }
}
