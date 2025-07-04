component Main {
  use Provider.Url {
    changes: (url : Url) { Window.alert(Url.toString(url, true)) }
  }

  fun render : Html {
    <div>
      <a href="/home">"Home"</a>
      <a href="/">"Root"</a>
    </div>
  }
}

routes {
  * {
    ""
  }
}
