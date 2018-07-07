/* A component for a page. */
component Page {
  /* The children to render. */
  property children : Array(Html) = []

  style base {
    flex-direction: column;
    display: flex;
    flex: 1;

    max-width: 1040px;
    margin: 0 auto;
    width: 100%;
    color: #444;

    padding: 50px 20px;
    padding-bottom: 100px;

    @media (max-width: 600px) {
      padding: 20px;
      padding-top: 25px;
      padding-bottom: 75px;
    }
  }

  /* Renders the component. */
  fun render : Html {
    <div::base>
      <{ children }>
    </div>
  }
}
