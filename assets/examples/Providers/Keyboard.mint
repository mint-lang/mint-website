component Main {
  state logs : Array(String) = []

  use Provider.Keyboard {
    downs:
      (event : Html.Event) {
        next { logs: Array.push(logs, "Down: #{event.keyCode}") }
      },
    ups:
      (event : Html.Event) {
        next { logs: Array.push(logs, "Up: #{event.keyCode}") }
      }
  }

  fun render {
    <div>
      "Focus the page and press some keys..."

      for log of logs {
        <div>log</div>
      }
    </div>
  }
}
