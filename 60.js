import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : Html {
    <>
      <div>"Hi!"</div>
      <div>"Howdy!"</div>
      <div>"Ahoy!"</div>
    </>
  }
}`})],contents:A(B,{},[A('p',{},[`There are cases where you don`,`'`,`t want to wrap multiple `,A('code',{},[`HTML`]),` elements`,`
`,`with a `,A('code',{},[`div`]),` (for example). In those cases, you can use an `,A('strong',{},[`HTML`,`
`,`fragment`]),`.`]),A('p',{},[`It`,`'`,`s written as an HTML tag without a tag name:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<>
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`div`]),`>`,A('span',{class:"string"},[`"Hi!"`]),`</`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`div`]),`>`,A('span',{class:"string"},[`"Howdy!"`]),`</`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`div`]),`>`,A('span',{class:"string"},[`"Ahoy!"`]),`</`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`</>`])])]),A('p',{},[`HTML fragments can only have one attribute `,A('code',{},[`key`]),`, which is used to`,`
`,`identify the fragment in specific cases, which we will cover later.`])])}),d=c;export default d;