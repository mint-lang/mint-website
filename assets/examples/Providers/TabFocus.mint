component Main {
  use Provider.TabFocus {
    onTabOut: () { Window.alert("Tabbed Out!") },
    onTabIn: () { Window.alert("Tabbed In!") },
    element: input
  }

  fun render : Html {
    <div>
      "Focus the input using the tab key."
      <input as input/>
    </div>
  }
}
