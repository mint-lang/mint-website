component Main {
  use Provider.Shortcuts {
    shortcuts:
      [
        {
          action: () { Window.alert("Shortcut pressed!") },
          shortcut: [Html.Event.CTRL, Html.Event.G],
          condition: () { true },
          bypassFocused: false
        }
      ]
  }

  fun render : Html {
    <div>"Press CTRL+G"</div>
  }
}
