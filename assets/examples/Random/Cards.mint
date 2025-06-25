type Card {
  Ace
  Two
  Three
  Four
  Five
  Six
  Seven
  Eight
  Nine
  Ten
  Jack
  Queen
  King
}

component Main {
  state card = Card.Three

  const CARDS =
    [
      Card.Ace,
      Card.Two,
      Card.Three,
      Card.Four,
      Card.Five,
      Card.Six,
      Card.Seven,
      Card.Eight,
      Card.Nine,
      Card.Ten,
      Card.Jack,
      Card.Queen,
      Card.King
    ]

  fun draw {
    next { card: Array.sample(CARDS) or Card.Three }
  }

  fun render {
    <div>
      <button onClick={draw}>"Draw"</button>

      <div style="font-size: 12em;">
        case card {
          Two => "🂢"
          Three => "🂣"
          Four => "🂤"
          Five => "🂥"
          Six => "🂦"
          Seven => "🂧"
          Eight => "🂨"
          Nine => "🂩"
          Ten => "🂪"
          Jack => "🂫"
          Queen => "🂭"
          King => "🂮"
          Ace => "🂡"
        }
      </div>
    </div>
  }
}
