import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  state name : String = "Mint"

  fun render : String {
    name
  }
}`})],contents:A(B,{},[A('p',{},[`Mint is a strongly typed programming language, which means that you`,`
`,`will encounter a lot of type definitions.`]),A('p',{},[`Syntax wise, a type definition consists of an identifier starting with`,`
`,`a capital letter, and followed by letters and numbers. They appear in`,`
`,`code in multiple places, usually preceded by a colon:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`""`])])])]),A('p',{},[`A type gives a name to a value conforming to a specific data structure.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// The type of this value is \`String\``]),`
`]),A('span',{class:"line"},[``,A('span',{class:"string"},[`"Hello World!"`])])])]),A('p',{},[`A type can have `,A('strong',{},[`type variables`]),`. These variables make the type`,`
`,A('a',{href:"https://en.wikipedia.org/wiki/Polymorphism_(computer_science)"},[`polymorphic`]),`, which means that the type can be used with other types`,`
`,`instead of the type variable.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// This is a generic type where the \`a\``]),`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// can be any other type.`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Maybe`]),`(`,A('span',{class:"variable"},[`a`]),`)
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// This represents just a \`String\` or nothing.`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Maybe`]),`(`,A('span',{class:"type"},[`String`]),`)`])])]),A('p',{},[`These kinds of types are called `,A('a',{href:"https://en.wikipedia.org/wiki/Composite_data_type"},[`composite types`]),` because the data`,`
`,`structure they describe are composed of multiple types.`])])}),d=c;export default d;