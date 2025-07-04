component Main {
  state logs : Array(String) = []

  use Provider.Pointer {
    downs:
      (event : Html.Event) {
        next { logs: Array.unshift(logs, "Down: #{event.pageX}x#{event.pageY}") }
      },
    moves:
      (event : Html.Event) {
        next { logs: Array.unshift(logs, "Move: #{event.pageX}x#{event.pageY}") }
      },
    ups:
      (event : Html.Event) {
        next { logs: Array.unshift(logs, "Up: #{event.pageX}x#{event.pageY}") }
      }
  }

  fun render {
    <div>
      "Move and click your pointer..."

      for log of logs {
        <div>log</div>
      }
    </div>
  }
}
