import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({solution:`component Main {
  fun greet (name : String = "World") : String {
    "Hello #{name}!"
  }

  fun render : Html {
    <h1>
      greet()
      <br/>
      greet("Joe")
    </h1>
  }
}`,contents:`component Main {
  fun greet : String {
    "Hello World!"
  }

  fun render : Html {
    <h1>
      greet()
      <br/>
      /* greet("Joe") */
    </h1>
  }
}`,path:`Main.mint`})],contents:A(B,{},[A('p',{},[`Functions can have arguments. Argument names must start with a`,`
`,`lowercase letter and can contain only letters and numbers.`]),A('p',{},[`Arguments come after the name of the function, separated by commas and`,`
`,`enclosed by parentheses:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`fun`]),` greet (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"Hello`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}!"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Arguments must have a type definition after the name and can have an`,`
`,`optional default value:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`fun`]),` greet (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`"World"`]),`) : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"Hello`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}!"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Let`,`'`,`s change the `,A('code',{},[`greet`]),` function to take an argument for the name and`,`
`,`use that in the return value`,`!`,` Don`,`'`,`t forget to add a default value`,`
`,`to make both calls work and uncomment the second greeting`,`!`])])}),d=c;export default d;