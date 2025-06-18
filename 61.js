import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : Html {
    let greeting =
      "Hello World!"

    <div>
      greeting
      <br/>
      "String"
      <br/>
      ["Item1", "Item2"]
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`At some point you will want to display some data in your HTML, and the`,`
`,`main way to do it by just putting them there`,`!`]),A('p',{},[`You are allowed to put any expression as a child of any HTML tag:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`expression1`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`expression2`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"String"`]),`
`]),A('span',{class:"line"},[`  [`,A('span',{class:"string"},[`"Item1"`]),`, `,A('span',{class:"string"},[`"Item2"`]),`]
`]),A('span',{class:"line"},[`</`,A('span',{class:"namespace"},[`div`]),`>`])])]),A('p',{},[`The only rule is that the expression must resolve to one of the`,`
`,`following types:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"type"},[`Html`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`String`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Array`]),`(`,A('span',{class:"type"},[`Html`]),`)
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Array`]),`(`,A('span',{class:"type"},[`String`]),`)`])])]),A('p',{},[`You can use a block to gather expressions together without displaying`,`
`,`them:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`name`]),` = `,A('span',{class:"string"},[`"Joe!"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"Hello`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}!"`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`</`,A('span',{class:"namespace"},[`div`]),`>`])])])])}),d=c;export default d;