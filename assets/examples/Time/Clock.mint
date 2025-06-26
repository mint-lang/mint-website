// Show an analog clock for your time zone.
component Main {
  state now : Time = Time.local()

  use Provider.Tick { ticks: () { next { now: Time.local() } } }

  fun hand (width : Number, length : Number, turns : Number) {
    let t =
      2 * Math.PI * (turns - 0.25)

    let x =
      200 + length * Math.cos(t)

    let y =
      200 + length * Math.sin(t)

    <line
      x1="200"
      y1="200"
      x2="#{x}"
      y2="#{y}"
      stroke="white"
      stroke-width="#{width}"
      stroke-linecap="round"
    />
  }

  fun render {
    let hour =
      Time.hour(now)

    let minute =
      Time.minute(now)

    let second =
      Time.second(now)

    <svg viewBox="0 0 400 400" width="400" height="400">
      <circle cx="200" cy="200" r="120" fill="#1293D8"/>
      hand(6, 60, hour / 12)
      hand(6, 90, minute / 60)
      hand(3, 90, second / 60)
    </svg>
  }
}
