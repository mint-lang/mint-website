component Trivia {
  /* The contents to display. */
  property children : Array(Html) = []

  /* Styles of the root element. */
  style root {
    grid-template-columns: auto 1fr auto;
    place-content: center;
    place-items: center;
    margin: 0 auto;
    grid-gap: 70px;
    display: grid;

    text-align: center;

    svg {
      --tabler-stroke-width: 0.7;

      height: 120px;
      width: 120px;
      opacity: 0.75;

      path {
        stroke: seagreen;
      }

      &:last-child {
        transform: scaleX(-1);
      }
    }
  }

  /* Styles of the fact. */
  style fact {
    line-height: 1.5;
    font-size: 24px;
    margin: 0;

    a {
      color: seagreen;
    }
  }

  /* Styles of the title. */
  style title {
    font-weight: 300;
    font-size: 20px;

    margin: 0;
    margin-bottom: 15px;
  }

  /* Renders the component. */
  fun render : Html {
    <div::root>
      @svg(../../assets/leaves.svg)

      <div>
        <p::title>"Did you know?"</p>

        <p::fact>
          children
        </p>
      </div>

      @svg(../../assets/leaves.svg)
    </div>
  }
}
