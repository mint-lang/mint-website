import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Multiplier {
  property number : Number
  property by : Number

  get result : Number {
    number * by
  }

  fun render : Html {
    <div>
      Number.toString(result)
    </div>
  }
}

component Main {
  fun render : Html {
    <div>
      <Multiplier number={3} by={100}/>
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`There are some instances where you want to move a bigger piece of code`,`
`,`into a function, but it doesn`,`'`,`t depend on any arguments. For this, you`,`
`,`can use a computed property.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`get`]),` computation {
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// Do some computations here`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Later on you can call it like any other variable.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"The result of the computation is: "`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`computation`]),`
`]),A('span',{class:"line"},[`</`,A('span',{class:"namespace"},[`div`]),`>`])])])])}),d=c;export default d;