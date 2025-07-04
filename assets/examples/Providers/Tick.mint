component Main {
  state count : Number = 0

  use Provider.Tick { ticks: () { next { count: count + 1 } } }

  fun render : Html {
    <div>count</div>
  }
}
