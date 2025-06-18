import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({solution:`component Main {
  fun render : Html {
    let name =
      "World"

    <h1>"Hello #{name}!"</h1>
  }
}`,contents:`component Main {
  fun render : Html {
    <h1>"Hello World!"</h1>
  }
}`,path:`Main.mint`})],contents:A(B,{},[A('p',{},[`Functions play a central role, for instance, every component `,A('strong',{},[`must`]),`
`,`have a `,A('code',{},[`render`]),` function. That`,`'`,`s why it`,`'`,`s crucial you have a good`,`
`,`understanding of how they work.`]),A('p',{},[`Every function starts with the `,A('code',{},[`fun`]),` keyword then name (a`,`
`,`lowercase letter followed by letters and numbers). After the name (or`,`
`,`arguments) is the definition for the return type of the function.`]),A('p',{},[`The function`,`'`,`s body contains a number of statements and expressions:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`name`]),` =
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"World"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`h1`]),`>`,A('span',{class:"string"},[`"Hello`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}!"`]),`</`,A('span',{class:"namespace"},[`h1`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`We can even declare multiple variables:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`greeting`]),` =
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"Howdy"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`name`]),` =
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"World"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`h1`]),`>`,A('span',{class:"string"},[`"#{`]),A('span',{class:"variable"},[`greeting`]),A('span',{class:"string"},[`}`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}!"`]),`</`,A('span',{class:"namespace"},[`h1`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Let`,`'`,`s give it a shot`,`!`,` Declare a `,A('code',{},[`name`]),` variable in your `,A('code',{},[`render`]),`
`,`function and replace the currently hard-coded greeting.`])])}),d=c;export default d;