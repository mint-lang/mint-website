component Hero {
  /* Styles of the root element. */
  style root {
    grid-template-columns: 1fr auto;
    align-items: center;
    grid-gap: 100px;
    display: grid;

    h1 {
      font-family: Courgette;
      line-height: 1.25;
      font-size: 38px;
      margin: 0;
    }

    div > p {
      line-height: 1.5;
      font-size: 20px;
      margin: 0;
    }

    button {
      background: seagreen;
      border-radius: 4px;
      padding: 15px 30px;
      margin-top: 20px;
      border: 0;

      font-family: 'Noto Sans';
      font-weight: 600;
      font-size: 20px;
      color: white;
    }

    div > svg {
      margin-bottom: 40px;
      display: block;
      height: auto;
      width: 300px;

      path {
        fill: seagreen;
      }
    }
  }

  /* Renders the component. */
  fun render : Html {
    <div::root>
      <div>
        @svg(../../assets/hero.svg)
        <h1>"The programming language for writing single page applications"</h1>

        <p>
          <<#MARKDOWN
          Mint has all the tools you need to write **error free**, **easily
          readable** and **maintainable** applications in **record time**.
          MARKDOWN
        </p>

        <button>"Getting Started"</button>
      </div>

      <Snippet title={"Counter.mint"}>
        @highlight-file(../../assets/examples/Component.mint)
      </Snippet>
    </div>
  }
}
