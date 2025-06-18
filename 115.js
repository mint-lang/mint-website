import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Modules`]),A('p',{},[`In Mint, modules are kind of containers for a set of relatable functions`,`
`,`and constants. They are usually used to gather functions that relate to a`,`
`,`specific type (like `,A('code',{},[`String`]),` or `,A('code',{},[`Number`]),`).`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`module`]),` `,A('span',{class:"type"},[`Greeter`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` greet (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"Hello`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}!"`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`You can call the functions of a module by using the module`,`'`,`s name:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"type"},[`Greeter`]),`.`,A('span',{class:"variable"},[`greet`]),`(`,A('span',{class:"string"},[`"Joe"`]),`) `,A('span',{class:"comment"},[`/* "Hello Joe" */`])])])]),A('p',{},[`You can omit the name of the module if you are calling a function from`,`
`,`inside the same module:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`module`]),` `,A('span',{class:"type"},[`Greeter`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` greet (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"Hello`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}!"`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` greetUpperCase (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`greet`]),`(`,A('span',{class:"type"},[`String`]),`.`,A('span',{class:"variable"},[`toUpperCase`]),`(`,A('span',{class:"variable"},[`name`]),`))
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])])]),b=a;export default b;