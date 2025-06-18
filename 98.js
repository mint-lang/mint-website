import {createElement as B,fragment as C} from "./runtime.js";import {A} from "./101.js";export const a=(()=>{const b=B(A,{a:`vertical`,b:`75px`,c:`component Main {
  fun render : Html {
    let add =
      (a : Number, b : Number) : Number {
        a + b
      }

    // The standard way.
    let addOneV1 = (x : Number) { add(1, x) }

    // The new way \`_\` as a placeholder for the argument.
    let addOneV2 = add(1, _)

    <div>
      "addOneV1: #{addOneV1(2)}"
      <br/>
      "addOneV2: #{addOneV2(2)}"
    </div>
  }
}`});const c=B(A,{a:`vertical`,b:`150px`,c:`component Main {
  fun render : Html {
    <div>
      (Math.random() * 10)
      |> Math.floor
      |> String.charAt("Hello World!", _)
      |> String.toUpperCase()

      <br/>

      // It even works with labels.
      (Math.random() * 10)
      |> Math.floor
      |> String.charAt(string: "Hello World!", index: _)
      |> String.toUpperCase()
    </div>
  }
}`});const d=B(A,{a:`vertical`,b:`150px`,c:`store Application {
  state url : Url = Window.url()

  fun setUrl {
    next { url: Window.url() }
  }
}

component Main {
  connect Application exposing { url }

  fun render : Html {
    <div>
      "Current URL: #{Url.toString(url)}"

      <form action="/some-url">
        <label for="name">"Name"</label>
        <br/>
        <input type="text" id="name" name="name"/>
        <br/>
        <input type="submit"/>
      </form>
    </div>
  }
}

routes {
  * {
    Application.setUrl()
  }
}`});return B(C,{},[B('p',{},[`Mint is a type-safe programming language for writing single page`,`
`,`applications. This post, we will take a look at what`,`'`,`s new in the`,`
`,`releases `,B('code',{},[`0.22.0`]),` and `,B('code',{},[`0.23.*`]),`.`]),B('p',{},[`In these releases, we focused on polishing the language and added some`,`
`,`quality of life features. In these releases `,B('a',{href:"https://github.com/mint-lang/mint/issues?q=sort:updated-desc%20is:issue%20state:closed%20milestone:0.23.0%20OR%20milestone:0.22.0%20"},[`12 issues`]),` have been`,`
`,`closed.`]),B('h2',{},[`Function captures`]),B('p',{},[`It is now possible to create functions from other functions with`,`
`,`function capturing:`]),B('p',{},[``,b,``]),B('p',{},[`They can be especially useful in pipes:`]),B('p',{},[``,c,``]),B('h2',{},[`Intercepting form navigation`]),B('p',{},[`Mint already intercepts navigation of links so the application handles`,`
`,`them instead of the browser, but there was one navigation case we`,`
`,`didn`,`'`,`t cover and its form submissions with the `,B('code',{},[`GET`]),` method.`]),B('p',{},[`Now Mint will handle those submissions as well:`]),B('p',{},[``,d,``]),B('h2',{},[`Set functions`]),B('p',{},[B('a',{href:"https://github.com/ryanprior"},[`Ryan Prior`]),` added some functions for working with the `,B('code',{},[`Set`]),` type:`]),B('p',{},[B('code',{},[`Set.reduce`]),`, `,B('code',{},[`Set.union`]),`, `,B('code',{},[`Set.intersection`]),`, `,B('code',{},[`Set.difference`]),`,`,`
`,B('code',{},[`Set.isDisjoint`]),` and `,B('code',{},[`isSuperset`]),`.`]),B('p',{},[`Thank you for these additions`,`!`]),B('h2',{},[`Better errors`]),B('p',{},[`Some error messages have been updated or added to better reflect the`,`
`,`underlying error:`]),B('ul',{},[B('li',{},[`Added error message for missing body in an inline function.`]),B('li',{},[`Added proper error message for the impossible error.`]),B('li',{},[`Show better error message for missing variant.`]),B('li',{},[`Show better error location for missing CSS definition semicolon.`]),B('li',{},[`Show proper error message when trying to destrucutre a paramter that doesn`,`'`,`t exist.`]),B('li',{},[`Show proper error when there are component and module with the same name.`])]),B('h2',{},[`What`,`'`,`s next?`]),B('p',{},[`We continue on fixing bugs and issues that come up and there is one`,`
`,`feature (automatic decoding of cutom types) we would like to add before`,`
`,`releasing `,B('code',{},[`1.0.0`]),` (which is planned for this year).`]),B('hr',{},[]),B('p',{},[`These were just the highlights of the release, make sure to read the full`,`
`,`release notes:`,`
`,B('a',{href:"https://github.com/mint-lang/mint/releases/tag/0.22.0"},[B('code',{},[`0.22.0`])]),`,`,`
`,B('a',{href:"https://github.com/mint-lang/mint/releases/tag/0.23.0"},[B('code',{},[`0.23.0`])]),`,`,`
`,B('a',{href:"https://github.com/mint-lang/mint/releases/tag/0.23.1"},[B('code',{},[`0.23.1`])]),`.`,`
`,B('a',{href:"https://github.com/mint-lang/mint/releases/tag/0.23.2"},[B('code',{},[`0.23.2`])]),`.`])])})();export default a;