/* A component for the features section on the home page. */
component Features {
  style base {
    padding: 70px 0;
    padding-bottom: 90px;
  }

  style grid {
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    grid-gap: 20px;
    display: grid;
  }

  style title {
    font-family: Josefin Sans;
    text-transform: uppercase;
    margin-bottom: 5px;
    text-align: center;
    font-size: 32px;
  }

  style subtitle {
    margin-bottom: 50px;
    text-align: center;
    opacity: 0.5;
  }

  style container {
    max-width: 1040px;
    padding: 0 20px;
    margin: 0 auto;
  }

  /* Renders the component. */
  fun render : Html {
    <div::base>
      <div::container>
        <div::title>
          <{ "Why use Mint?" }>
        </div>

        <div::subtitle>
          <{ "Because it has a lot of awesome features!" }>
        </div>

        <div::grid>
          <Feature
            title="Typed"
            text={
              "Mint is a typed language. From components to HTML and CS" \
              "S everything is type checked, which means virtually no r" \
              "untime exceptions."
            }/>

          <Feature
            title="Fast"
            text={
              "Mint is fast. With incremental compilation it's usually " \
              "under a half a second to reload the page, while automati" \
              "cally formatting the code."
            }/>

          <Feature
            title="Everything is included"
            text={
              "Mint has a development server, production builder, test " \
              "runner and formatter in one binary, it has everything yo" \
              "u need to create SPAs."
            }/>

          <Feature
            title="Built in styling"
            text={
              "Write scoped CSS directly in components, and stop worryi" \
              "ng about conflicting global styles."
            }/>

          <Feature
            title="Built in state management"
            text={
              "With stores you can handle the state of the application " \
              "easily, when the data changes the view is re-rendered."
            }/>

          <Feature
            title="Built in routing"
            text={
              "Define the routes of your application at the language le" \
              "vel and let the runtime handle the navigation for you."
            }/>

          <Feature
            title="Immutable"
            text={
              "Data structures are immutable by default, only stores an" \
              "d the components state is mutable in a safe way."
            }/>

          <Feature
            title="Managed computations"
            text={
              "Handling synchronous and asynchronous computation is eas" \
              "y with the try and do statements."
            }/>

          <Feature
            title="Expression oriented"
            text={
              "Mint is an expression oriented language this means that " \
              "everything is an expression."
            }/>
        </div>
      </div>
    </div>
  }
}
