import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`store Application {
  state route : String = "/"

  fun setRoute (value : String) {
    next { route: value }
  }
}

routes {
  / { Application.setRoute("/") }
  /users { Application.setRoute("/users") }
  /users/:id (id : String) { Application.setRoute("/users/#{id}") }
}

component Main {
  fun render : Html {
    <div>
      <div>
        "Current route: "
        Application.route
      </div>

      <div>
        <a href="/">"Home"</a>
      </div>

      <div>
        <a href="/users">"Users"</a>
      </div>

      <div>
        <a href="/users/10">"User 10"</a>
      </div>

    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`In an application, you want to display different things based on where`,`
`,`the user is. In traditional JavaScript SPAs that is done with a library,`,`
`,`but here it`,`'`,`s part of the language:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`routes`]),` {
`]),A('span',{class:"line"},[`  /users {
`]),A('span',{class:"line"},[`    `,A('span',{class:"comment"},[`// Fetch users and display them.`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  /users/:id (`,A('span',{class:"variable"},[`id`]),`: `,A('span',{class:"type"},[`Number`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"comment"},[`// Fetch a user and display it.`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`The logic is very simple: when a route is matched, its block is`,`
`,`executed, and you can use this to do what needs to be done.`]),A('p',{},[`You can navigate to any route with an `,A('a',{href:"https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a"},[`anchor element`]),`:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`a`]),` href=`,A('span',{class:"string"},[`"/users"`]),`>`,A('span',{class:"string"},[`"Users"`]),`</`,A('span',{class:"namespace"},[`a`]),`>`])])]),A('p',{},[`In a usual application, the following steps are taken when a route is`,`
`,`matched:`]),A('ol',{},[A('li',{},[`Parse any route parameters`]),A('li',{},[`Load data over HTTP`]),A('li',{},[`Store data in a `,A('code',{},[`store`])]),A('li',{},[`Set the page in a `,A('code',{},[`store`]),` (usually `,A('code',{},[`Application`]),`)`])])])}),d=c;export default d;