import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : String {
    let value =
      Maybe.Just({"Joe", Maybe.Just("Howdy")})

    if let Just({"Joe", Just(greeting)}) = value {
      "#{greeting} to you too Joe!"
    } else {
      "Hello some person!"
    }
  }
}`})],contents:A(B,{},[A('p',{},[A('code',{},[`If`]),` expressions can have a `,A('code',{},[`let`]),` statement with a pattern instead of`,`
`,`the usual boolean condition.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"variable"},[`value`]),`) = `,A('span',{class:"type"},[`Maybe`]),`.`,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"string"},[`"Hello"`]),`) {
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// The destructuring is successfull...`]),`
`]),A('span',{class:"line"},[`} `,A('span',{class:"keyword"},[`else`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// The destructuring if unsuccessfull...`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`In that case, the main branch is only returned if the pattern matches`,`
`,`the given value. All destructured variables are available in the main`,`
`,`branch.`]),A('p',{},[`This is basically a syntax sugar for a two branch `,A('code',{},[`case`]),` expression,`,`
`,`however, there are some cases where it`,`'`,`s useful to have less`,`
`,`indentation or to omit the else branch.`])])}),d=c;export default d;