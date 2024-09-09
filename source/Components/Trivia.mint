component Trivia {
  // The contents to display.
  property children : Array(Html) = []

  // Styles of the root element.
  style root {
    justify-content: center;
    flex-direction: column;
    align-items: center;
    display: flex;
  }

  // Styles of the fact.
  style fact {
    text-align: center;
    line-height: 1.5;
    font-size: 24px;
    margin: 0;

    a {
      color: var(--color-mintgreen);
    }
  }

  // Styles of the title.
  style title {
    font-weight: 300;
    font-size: 20px;

    margin: 0;
    margin-bottom: 15px;
  }

  // Renders the component.
  fun render : Html {
    <div::root>
      <p::title>"Did you know?"</p>

      <p::fact><Content>ContentInstrumenter.instrumentMany(children)</Content></p>
    </div>
  }
}
