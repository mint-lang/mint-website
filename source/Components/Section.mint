component Section {
  /* The contents of the right side. */
  property children : Array(Html) = []

  /* The snippet on the left side. */
  property snippet : Html = <></>

  /* The title of the section. */
  property title : String

  /* Styles of the root element. */
  style root {
    grid-template-columns: auto 1fr;
    align-items: center;
    grid-gap: 100px;
    display: grid;
  }

  /*
  Styles of the content.
   TODO: Move it into it's own component
  */
  style content {
    line-height: 1.5;
    font-size: 20px;

    h2 {
      font-family: Courgette;
      font-size: 32px;
      margin-top: 0;
    }

    li + li {
      margin-top: 10px;
    }

    a {
      align-items: center;
      margin-top: 50px;
      color: seagreen;
      line-height: 1;
      display: flex;
      gap: 5px;

      svg {
        --tabler-stroke-width: 2;

        position: relative;
        height: 20px;
        width: 20px;
        top: 1px;
      }
    }
  }

  /* Renders the component. */
  fun render : Html {
    <div::root>
      snippet

      <div::content>
        <h2>
          title
        </h2>

        children
      </div>
    </div>
  }
}
