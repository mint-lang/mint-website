import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : Html {
    <div onClick={() { Window.alert("Hello!") }}>
      "Click Me!"
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`You can set event handlers on HTML elements using the `,A('code',{},[`on`]),` attributes:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`div`]),` onClick={() { `,A('span',{class:"type"},[`Window`]),`.`,A('span',{class:"variable"},[`alert`]),`(`,A('span',{class:"string"},[`"Hello!"`]),`) }}>
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"Click Me!"`]),`
`]),A('span',{class:"line"},[`</`,A('span',{class:"namespace"},[`div`]),`>`])])]),A('p',{},[`These handlers can take one of two possible function types:`]),A('ul',{},[A('li',{},[A('code',{},[`Function(Html.Event, a)`])]),A('li',{},[A('code',{},[`Function(a)`])])]),A('p',{},[`In regular JavaScript, there are multiple event objects with different`,`
`,`values. `,A('a',{href:"https://www.mint-lang.com/api/records/Html.Event"},[A('code',{},[`Html.Event`])]),`
`,`is a record which contains normalized values, so it can be used in all`,`
`,`event handlers.`])])}),d=c;export default d;