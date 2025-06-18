import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`module Greeter {
  fun greet (name : String = "World") : String {
    "Hello #{name}!"
  }
}

component Main {
  fun render : Html {
    <div>
      Greeter.greet()
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`Modules are top level entities used for grouping related functions and`,`
`,`constants together. They are usually used to gather functions that`,`
`,`relate to a specific type (like `,A('code',{},[`String`]),` or `,A('code',{},[`Number`]),`).`]),A('p',{},[`You can call the functions of a module by using the module`,`'`,`s name:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"type"},[`Greeter`]),`.`,A('span',{class:"variable"},[`greet`]),`(`,A('span',{class:"string"},[`"Joe"`]),`) `,A('span',{class:"comment"},[`/* "Hello Joe" */`])])])]),A('p',{},[`You can omit the name of the module if you are calling the function`,`
`,`from inside the module:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`module`]),` `,A('span',{class:"type"},[`Greeter`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` greet (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"Hello`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}!"`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` greetUpperCase (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`greet`]),`(`,A('span',{class:"type"},[`String`]),`.`,A('span',{class:"variable"},[`toUpperCase`]),`(`,A('span',{class:"variable"},[`name`]),`))
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Modules are `,A('strong',{},[`open`]),`, meaning that you can define additional functions`,`
`,`in different places:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`module`]),` `,A('span',{class:"type"},[`Greeter`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` greet (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"Hello`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}!"`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`module`]),` `,A('span',{class:"type"},[`Greeter`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` greetUpperCase (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`greet`]),`(`,A('span',{class:"type"},[`String`]),`.`,A('span',{class:"variable"},[`toUpperCase`]),`(`,A('span',{class:"variable"},[`name`]),`))
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`It`,`'`,`s useful if you want to extend modules in the standard library.`])])}),d=c;export default d;