component Main {
  state logs : Array(String) = []

  use Provider.Mouse {
    clicks:
      (event : Html.Event) {
        next {
          logs: Array.unshift(logs, "Click: #{event.pageX}x#{event.pageY}")
        }
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
      "Move and click your mouse..."

      for log of logs {
        <div>log</div>
      }
    </div>
  }
}
