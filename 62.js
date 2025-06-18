import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : Html {
    <div>
      "This is the content of a component!"
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`A `,A('strong',{},[`component`]),` is a collection of UI elements which together serve a`,`
`,`specific function. You can think of buttons, checkboxes, selects, images,`,`
`,`etc... as components.`]),A('p',{},[`All components `,A('strong',{},[`must have`]),` a `,A('strong',{},[`render function`]),`. This function tells`,`
`,`the browser what to display. It can return a single HTML tag, a string`,`
`,`or an array of them.`]),A('p',{},[`There is a special component called `,A('code',{},[`Main`]),`, which is the root element,`,`
`,`and it`,`'`,`s displayed on the screen. All other components will be added`,`
`,`to this component.`])])}),d=c;export default d;