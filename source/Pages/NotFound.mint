/* The not found (404) page. */
component Pages.NotFound {
  style title {
    font-family: Josefin Sans;
    font-size: 100px;
  }

  style text {
    margin-bottom: 40px;
    font-size: 20px;
  }

  style base {
    justify-content: center;
    flex-direction: column;
    align-items: center;
    display: flex;
    flex: 1;

    padding: 100px 0;
    padding-bottom: 75px;
  }

  /* Renders the page. */
  fun render : Html {
    <Page>
      <div::base>
        <div::title>
          "404"
        </div>

        <div::text>
          "There is nothing here..."
        </div>

        <Button href="/">
          "Home"
        </Button>
      </div>
    </Page>
  }
}
