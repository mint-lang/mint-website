// Show the current time in your time zone.
component Main {
  state now : Time = Time.local()

  use Provider.Tick { ticks: () { next { now: Time.local() } } }

  fun render {
    <h1>Time.format(now, Time.Format.ENGLISH, "%H:%M:%S")</h1>
  }
}
