component Feature {
  property title : String = ""
  property text : String = ""

  style title {
    border-bottom: 1px dashed #CCC;
    padding-bottom: 10px;
    align-items: center;
    margin-bottom: 10px;
    position: relative;
    font-weight: bold;
    display: flex;
  }

  style text {
    position: relative;
    z-index: 1;
  }

  style base {
    position: relative;
    background: #FFF;
    overflow: hidden;
    padding: 20px;
  }

  style star {
    margin-right: 10px;
    fill: #2f9e59;
    height: 14px;
    width: 14px;
  }

  get star : Html {
    <svg::star
      xmlns="http://www.w3.org/2000/svg"
      viewBox="0 0 24 24"
      height="24"
      width="24">

      <path
        d={
          "M12 .288l2.833 8.718h9.167l-7.417 5.389 2.833 8.718-7.41" \
          "6-5.388-7.417 5.388 2.833-8.718-7.416-5.389h9.167z"
        }/>

    </svg>
  }

  fun render : Html {
    <div::base>
      <div::title>
        <{ star }>
        <{ title }>
      </div>

      <div::text>
        <{ text }>
      </div>
    </div>
  }
}

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
