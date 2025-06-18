import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : Html {
    <div>
      <h1>"A title..."</h1>
      <strong>"Some bold text!"</strong>
      <br/>

      <a href="https://mint-lang.com" target="_blank">
        "Mint Website"
      </a>

      <ul>
        <li>"Item 1"</li>
        <li>"Item 2"</li>
        <li>"Item 3"</li>
      </ul>

      <fieldset>
        <input type="checkbox" checked={true}/>
        <label>"Checkbox"</label>
      </fieldset>

      <div style="color: purple;">"I am purple"</div>
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`Mint mostly supports writing HTML as is, and you can use any tags you`,`
`,`would like. It uses a `,A('strong',{},[`virtual DOM`]),` to render the defined tags to`,`
`,`the document (currently `,A('a',{href:"https://preactjs.com/"},[`Preact`]),`, but it might`,`
`,`change in the future).`]),A('p',{},[`There are some changes and additions which you should be aware of:`]),A('ul',{},[A('li',{},[A('p',{},[`Text needs to be specified as strings, because it allows you to`,`
`,`control whitespace explicitly.`])]),A('li',{},[A('p',{},[`You can use expressions inside the HTML tags, like `,A('code',{},[`if`]),` and `,A('code',{},[`for`]),`.`])]),A('li',{},[A('p',{},[`Attributes cannot be naked, so they must have a value.`])])]),A('p',{},[`Attributes are usually strings, but there are some exceptions:`]),A('ul',{},[A('li',{},[A('p',{},[`Anything starting with `,A('code',{},[`on`]),` is considered an event, which takes`,`
`,`a function instead of a string (`,A('code',{},[`onClick={() { Window.alert("Hello!") }}`]),`).`])]),A('li',{},[A('p',{},[A('code',{},[`readonly`]),`, `,A('code',{},[`disabled`]),` and `,A('code',{},[`checked`]),` takes a `,A('code',{},[`Bool`]),`
`,`(`,A('code',{},[`checked={true}`]),`).`])]),A('li',{},[A('p',{},[A('code',{},[`style`]),` can be a string or `,A('code',{},[`Map(String, String)`]),`.`])]),A('li',{},[A('p',{},[A('code',{},[`className`]),` cannot be used, use `,A('code',{},[`class`]),` instead.`])]),A('li',{},[A('p',{},[A('code',{},[`ref`]),` attribute is forbidden.`])])])])}),d=c;export default d;