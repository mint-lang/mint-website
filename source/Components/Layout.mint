/* The component for the layout. */
component Layout {
  /* The children to render. */
  property children : Array(Html) = []

  style base {
    font-family: Open Sans;
    flex-direction: column;
    background: #F9F9F9;
    min-height: 100vh;
    margin: 0 auto;
    display: flex;
  }

  style logo {
    margin-left: -7px;
    margin-top: 2px;
    width: 22px;

    path {
      fill: white;
    }
  }

  /* Renders the layout. */
  fun render : Html {
    <div::base>
      <Header/>

      <{ children }>

      <Footer/>
    </div>
  }
}
