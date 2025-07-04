component Main {
  state frame : Number = 0

  use Provider.AnimationFrame { frames: -> frame }

  fun render {
    <div>frame</div>
  }
}
