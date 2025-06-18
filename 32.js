import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : Html {
    let greet =
      () {
        "Hello World!"
      }

    <div>
      greet()
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`Anonymous functions look like regular functions but without the `,A('code',{},[`fun`]),`
`,`keyword and the name, and they are usually used in event handlers or as`,`
`,`arguments to other function calls:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// 2, 4, 6, 8, 10`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Array`]),`.`,A('span',{class:"variable"},[`map`]),`(
`]),A('span',{class:"line"},[`  [`,A('span',{class:"number"},[`1`]),`, `,A('span',{class:"number"},[`2`]),`, `,A('span',{class:"number"},[`3`]),`, `,A('span',{class:"number"},[`4`]),`, `,A('span',{class:"number"},[`5`]),`],
`]),A('span',{class:"line"},[`  (`,A('span',{class:"variable"},[`item`]),` : `,A('span',{class:"type"},[`Number`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`item`]),` `,A('span',{class:"operator"},[`*`]),` `,A('span',{class:"number"},[`2`]),`
`]),A('span',{class:"line"},[`  })`])])]),A('p',{},[`They can have a return type and optional arguments as well:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`(`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`"World"`]),`) : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"Hello World!"`]),`
`]),A('span',{class:"line"},[`}`])])])])}),d=c;export default d;