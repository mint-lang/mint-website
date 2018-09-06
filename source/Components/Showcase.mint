/* Represents a showcase item. */
record Showcase.Item {
  description : Html,
  title : String,
  key : String
}

/* The showcase component on the home page. */
component Showcase {
  connect Showcase.Store exposing { active }

  style row {
    background: #FFF;
  }

  style base {
    padding: 50px 20px;
    max-width: 1040px;
    margin: 0 auto;

    @media (max-width: 600px) {
      padding-bottom: 20px;
    }
  }

  style code {
    line-height: 2;
    margin: 0;

    @media (max-width: 600px) {
      margin-bottom: 20px;
    }
  }

  style description {
    align-self: flex-start;
    margin-left: 30px;
    font-size: 18px;
    flex: 1;

    position: sticky;
    top: 30px;

    & hr {
      border: 0;
      border-bottom: 1px solid #E6E6E6;
    }

    & code {
      border: 1px solid #E6E6E6;
      background: #F6F6F6;
      border-radius: 3px;
      font-size: 0.88em;
      padding: 1px 5px;
    }

    & p,
    & ul,
    & li {
      line-height: 1.4;
    }

    & ul {
      padding-left: 20px;
    }

    & li {
      margin-bottom: 10px;
    }

    @media (max-width: 600px) {
      background: rgba(255,255,255,0.92);
      font-size: 13px;
      padding: 10px 0;
      margin-left: 0;
      bottom: 0;
    }
  }

  style spacer {
    height: 10px;
  }

  style wrapper {
    display: flex;

    @media (max-width: 600px) {
      font-size: 12px;
      display: block;
    }
  }

  style title {
    text-transform: uppercase;
    font-family: Josefin Sans;
    margin-bottom: 5px;
    text-align: center;
    font-weight: bold;
    font-size: 26px;
  }

  style hint {
    margin-bottom: 50px;
    text-align: center;
    opacity: 0.8;
  }

  style section-title {
    border-bottom: 1px solid #E6E6E6;
    padding-bottom: 10px;
    margin-bottom: 10px;
    font-weight: bold;
    font-size: 22px;

    @media (max-width: 600px) {
      font-size: 18px;
    }
  }

  /* Returns the data for the showcase items. */
  get data : Array(Showcase.Item) {
    [
      {
        title = "Stores",
        key = "store",
        description =
          <div>
            <ul>
              <li>
                <{
                  "Stores are global containers of application specific dat" \
                  "a."
                }>
              </li>

              <li>
                <{
                  "Stores can be connected to components to reference their" \
                  " functions and properties."
                }>
              </li>

              <li>
                <{
                  "Any time data in a store is updated the connected compon" \
                  "ents are re-rendered."
                }>
              </li>
            </ul>

            <hr/>

            <p>
              <{
                "Here we define a store to contain the value of the count" \
                "er and the functions to mutate it."
              }>
            </p>
          </div>
      },
      {
        title = "Store State",
        key = "store-state",
        description =
          <ul>
            <li>
              <{ "The " }>

              <code>
                <{ "state" }>
              </code>

              <{
                " keyword when used in a store defines part of the data t" \
                "hat the store contains."
              }>
            </li>

            <li>
              <{ "The data are available through the " }>

              <code>
                <{ "state" }>
              </code>

              <{ " variable of the store." }>
            </li>
          </ul>
      },
      {
        title = "Functions",
        key = "function",
        description =
          <div>
            <ul>
              <li>
                <{
                  "Functions can be defined on modules, components, stores " \
                  "and providers."
                }>
              </li>

              <li>
                <{
                  "Functions can be referenced by their names inside the en" \
                  "tity which they were defined in."
                }>
              </li>

              <li>
                <{
                  "Similarly to some functional languages the body a functi" \
                  "on can only be a single expression."
                }>
              </li>
            </ul>

            <hr/>

            <p>
              <{ "This function returns " }>

              <code>
                <{ "Void" }>
              </code>

              <{ " which means it does a side-effect." }>
            </p>
          </div>
      },
      {
        title = "Next Call",
        key = "next",
        description =
          <div>
            <ul>
              <li>
                <{
                  "A next call is used to mutate the state of a component o" \
                  "r a store"
                }>
              </li>

              <li>
                <{
                  "A next call is considered a side-effect which means it a" \
                  "lways returns "
                }>

                <code>
                  <{ "Void" }>
                </code>

                <{ "." }>
              </li>
            </ul>

            <hr/>

            <p>
              <{
                "Here we increment the current state of the counter by 1 " \
                "and set a new state with the incremented counter."
              }>
            </p>
          </div>
      },
      {
        title = "Component",
        key = "component",
        description =
          <div>
            <ul>
              <li>
                <{
                  "Components are reusable pieces of code that have specifi" \
                  "c behavior, styles and content."
                }>
              </li>

              <li>
                <{
                  "Components can be composed into HTML elements and other " \
                  "components."
                }>
              </li>

              <li>
                <{ "Data to components can be send via it's properties." }>
              </li>
            </ul>

            <hr/>

            <p>
              <{
                "This component contains the counter and two buttons to i" \
                "ncrement and decrement it."
              }>
            </p>
          </div>
      },
      {
        title = "Connect",
        key = "connect",
        description =
          <div>
            <ul>
              <li>
                <{
                  "The connect directive lets you connect a component to a " \
                  "store which allows you to call the stores functions and " \
                  "properties without using the stores name."
                }>
              </li>

              <li>
                <{
                  "Components gets rendered when the data in the store chan" \
                  "ges."
                }>
              </li>
            </ul>

            <hr/>

            <p>
              <{ "Here we expose the " }>

              <code>
                <{ "increment" }>
              </code>

              <{ " " }>

              <code>
                <{ "decrement" }>
              </code>

              <{ " functions and the " }>

              <code>
                <{ "counter" }>
              </code>

              <{ " property to the component." }>
            </p>
          </div>
      },
      {
        title = "Component Properties",
        key = "component-property",
        description =
          <div>
            <ul>
              <li>
                <{ "The " }>

                <code>
                  <{ "property" }>
                </code>

                <{
                  " keyword when used in a component defines external data " \
                  "that the component can recieve via HTML attributes."
                }>
              </li>

              <li>
                <{
                  "The defined property has a name, type and a default valu" \
                  "e."
                }>
              </li>
            </ul>

            <hr/>

            <p>
              <{
                "Here for the sake of the example we define a disabled pr" \
                "operty which determines if the counter can be changed."
              }>
            </p>
          </div>
      },
      {
        title = "Styles",
        key = "style",
        description =
          <div>
            <ul>
              <li>
                <{ "Styles define with CSS how an HTML element looks." }>
              </li>

              <li>
                <{
                  "Styles are identified by a name and the contain CSS decl" \
                  "arations and other optionally sub rules."
                }>
              </li>

              <li>
                <{
                  "Styles are scoped to the component and the element which" \
                  " uses them."
                }>
              </li>
            </ul>

            <hr/>

            <p>
              <{
                "Here we define the styles of the main element of the com" \
                "ponent."
              }>
            </p>
          </div>
      },
      {
        title = "CSS Interpolation",
        key = "css-interpolation",
        description =
          <div>
            <ul>
              <li>
                <{
                  "Expressions can be evaluated inside a CSS declarations v" \
                  "alue using CSS interpolation."
                }>
              </li>

              <li>
                <{
                  "These expressions are evaluated every time the component" \
                  " is rendered."
                }>
              </li>

              <li>
                <{
                  "The resulting type of an expression can only be String o" \
                  "r Number."
                }>
              </li>

              <li>
                <{
                  "There is no limit on number of interpolations that can b" \
                  "e used in a value."
                }>
              </li>
            </ul>

            <hr/>

            <p>
              <{
                "Here we use the value from the computed property backgro" \
                "und to style the background of the main element."
              }>
            </p>
          </div>
      },
      {
        title = "CSS Declaration",
        key = "css-declaration",
        description =
          <div>
            <ul>
              <li>
                <{
                  "Any number of standard CSS declarations can be defined i" \
                  "n a style."
                }>
              </li>

              <li>
                <{
                  "A CSS declaration consists of a CSS property and a value" \
                  "."
                }>
              </li>
            </ul>

            <hr/>

            <p>
              <{
                "Here we set a number of CSS properties for the base styl" \
                "e."
              }>
            </p>
          </div>
      },
      {
        title = "Computed Properties",
        key = "get",
        description =
          <div>
            <ul>
              <li>
                <{
                  "Computed properties can be defined on a component with t" \
                  "he "
                }>

                <code>
                  <{ "get" }>
                </code>

                <{ " keyword." }>
              </li>

              <li>
                <{
                  "Computed properties works like regular properties but in" \
                  "stead of returning a constant value it can return differ" \
                  "ent values base on the state and the properties."
                }>
              </li>

              <li>
                <{
                  "Computed properties are mostly used together with CSS in" \
                  "terpolations."
                }>
              </li>
            </ul>

            <hr/>

            <p>
              <{
                "Here we return a different background color based on the" \
                " value of the counter."
              }>
            </p>
          </div>
      },
      {
        title = "Render",
        key = "render",
        description =
          <ul>
            <li>
              <{
                "The render function renders the component into an HTML t" \
                "ree."
              }>
            </li>

            <li>
              <{
                "The render function is required to return Html, String o" \
                "r an Array of those."
              }>
            </li>
          </ul>
      },
      {
        title = "HTML Elements",
        key = "html-element",
        description =
          <div>
            <ul>
              <li>
                <{ "HTML elements can be written as in standard HTML." }>
              </li>

              <li>
                <{
                  "HTML elements are not confined to the render function so" \
                  " they can be used as an expression."
                }>
              </li>

              <li>
                <{
                  "HTML elements are can only have other HTML elements, HTM" \
                  "L expressions and components as children."
                }>
              </li>
            </ul>

            <hr/>

            <p>
              <{
                "Here we have a button element with two attributes whose " \
                "values are expressions."
              }>
            </p>
          </div>
      },
      {
        title = "Events",
        key = "event",
        description =
          <div>
            <ul>
              <li>
                <{
                  "Event attributes are special and their value match speci" \
                  "fic event types."
                }>
              </li>

              <li>
                <{
                  "All event handlers are functions, they take an event rec" \
                  "ord and return Void."
                }>
              </li>
            </ul>

            <hr/>

            <p>
              <{
                "Here when clicking on the button we call the decrement f" \
                "unction."
              }>
            </p>
          </div>
      },
      {
        title = "Attributes",
        key = "attribute",
        description =
          <div>
            <ul>
              <li>
                <{ "Attributes are either strings or expressions." }>
              </li>

              <li>
                <{ "All attributes must have a value." }>
              </li>

              <li>
                <{
                  "Some attribute require specific types, for example disab" \
                  "led and readonly require Bool."
                }>
              </li>
            </ul>

            <hr/>

            <p>
              <{
                "Here we are passing the disabled attribute the value of " \
                "the disabled property as an expression."
              }>
            </p>
          </div>
      },
      {
        title = "HTML Expressions",
        key = "html-expression",
        description =
          <div>
            <ul>
              <li>
                <{
                  "HTML Expressions allows inserting data into HTML element" \
                  "s or components."
                }>
              </li>

              <li>
                <{
                  "The return value of an expression must be HTML or String" \
                  "."
                }>
              </li>
            </ul>

            <hr/>

            <p>
              <{ "Here we are inserting the string \"Increment\"." }>
            </p>
          </div>
      },
      {
        title = "The Main Component",
        key = "main",
        description =
          <ul>
            <li>
              <{
                "The component named Main is the one that get's rendered " \
                "on the screen."
              }>
            </li>
          </ul>
      },
      {
        title = "Component Tags",
        key = "html-component",
        description =
          <div>
            <ul>
              <li>
                <{
                  "Tags that have the name of a component will render that " \
                  "component at the point where the tag is defined."
                }>
              </li>

              <li>
                <{
                  "Attributes work like on HTML elements with the differenc" \
                  "e that they are type checked against the components prop" \
                  "erties."
                }>
              </li>
            </ul>

            <hr/>

            <p>
              <{ "Here we are rendering the " }>

              <code>
                <{ "Counter" }>
              </code>

              <{ " component." }>
            </p>
          </div>
      }
    ]
  }

  /* Renders the showcase. */
  fun render : Html {
    <div::row>
      <div::base>
        <div::title>
          <{ "Explore an example" }>
        </div>

        <div::hint>
          <{ "Click on the parts to learn more." }>
        </div>

        <div::wrapper>
          <pre::code>
            <Showcase.HighlightBlock
              line="store Counter.Store"
              padding="5px 10px"
              name="store">

              <Showcase.Highlight
                text="state counter : Number = 0"
                name="store-state"/>

              <div::spacer/>

              <Showcase.HighlightBlock
                line="fun increment : Void"
                name="function">

                <Showcase.Highlight
                  text="next { counter = counter + 1 }"
                  name="next"/>

              </Showcase.HighlightBlock>

              <div::spacer/>

              <Showcase.Block line="fun decrement : Void">
                <{ "next { counter = counter - 1 }" }>
              </Showcase.Block>

            </Showcase.HighlightBlock>

            <div::spacer/>

            <Showcase.HighlightBlock
              line="component Counter"
              name="component"
              padding="5px 10px">

              <Showcase.Highlight
                text={
                  "connect Counter.Store exposing { increment, decrement, c" \
                  "ounter }"
                }
                name="connect"/>

              <div::spacer/>

              <Showcase.Highlight
                text="property disabled : Bool = false"
                name="component-property"/>

              <div::spacer/>

              <Showcase.HighlightBlock
                line="style base"
                name="style">

                <{ "background: " }>

                <Showcase.Highlight
                  text="{background}"
                  name="css-interpolation"/>

                <{ ";\n" }>

                <Showcase.Highlight
                  text="border-radius: 5px;"
                  name="css-declaration"/>

                <{ "\ntransition: 320ms;" }>
                <{ "\ndisplay: flex;" }>
                <{ "\npadding: 20px;" }>
                <{ "\nmargin: 20px; " }>

              </Showcase.HighlightBlock>

              <div::spacer/>

              <Showcase.Block line="style counter">
                <{ "font-family: sans;" }>
                <{ "\nfont-size: 20px;" }>
                <{ "\npadding: 0 20px;" }>
              </Showcase.Block>

              <div::spacer/>

              <Showcase.HighlightBlock
                line="get background : String"
                name="get">

                <{ "if (counter >= 10) {\n" }>
                <{ "  \"lightgreen\"\n" }>
                <{ "} else {\n" }>
                <{ "  if (counter < 0) {\n" }>
                <{ "    \"orangered\"\n" }>
                <{ "  } else {\n" }>
                <{ "    \"#F2F2F2\"\n" }>
                <{ "  }\n" }>
                <{ "}" }>

              </Showcase.HighlightBlock>

              <div::spacer/>

              <Showcase.HighlightBlock
                line="fun render : Html"
                name="render">

                <Showcase.Block
                  closingChar="</div>"
                  openingChar=""
                  line="<div::base>">

                  <Showcase.HighlightBlock
                    closingChar="</button>"
                    openingChar=""
                    line="<button"
                    name="html-element">

                    <Showcase.Highlight
                      text="onClick={(event : Html.Event) : Void => { decrement() }}"
                      name="event"/>

                    <{ "\ndisabled={disabled}>" }>
                    <div::spacer/>
                    <{ "<{ \"Decrement\" }>" }>
                    <div::spacer/>

                  </Showcase.HighlightBlock>

                  <div::spacer/>

                  <Showcase.Block
                    closingChar="</span>"
                    openingChar=""
                    line="<span::counter>">

                    <{ "<{ Number.toString(counter) }>" }>

                  </Showcase.Block>

                  <div::spacer/>

                  <Showcase.Block
                    closingChar="</button>"
                    openingChar=""
                    line="<button">

                    <{
                      "onClick={(event : Html.Event) : Void => { increment() }}" \
                      "\n"
                    }>

                    <{ "disabled=" }>

                    <Showcase.Highlight
                      text="{disabled}"
                      name="attribute"/>

                    <{ ">\n" }>

                    <Showcase.Highlight
                      text="<{ \"Increment\" }>"
                      name="html-expression"/>

                  </Showcase.Block>

                </Showcase.Block>

              </Showcase.HighlightBlock>

            </Showcase.HighlightBlock>

            <div::spacer/>

            <Showcase.HighlightBlock
              line="component Main"
              name="main"
              padding="5px 10px">

              <Showcase.Block line="fun render : Html">
                <Showcase.Highlight
                  text="<Counter disabled={false}/>"
                  name="html-component"/>
              </Showcase.Block>

            </Showcase.HighlightBlock>
          </pre>

          <div::description>
            <div::section-title>
              <{ selected.title }>
            </div>

            <{ selected.description }>
          </div>
        </div>
      </div>
    </div>
  } where {
    selected =
      data
      |> Array.find(
        (item : Showcase.Item) : Bool => { item.key == active })
      |> Maybe.withDefault(
        {
          description = Html.empty(),
          title = "",
          key = ""
        })
  }
}
