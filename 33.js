import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
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
}`})],contents:A(B,{},[A('p',{},[`You can call on any value using parentheses `,A('code',{},[`()`]),` provided that its type`,`
`,`is `,A('code',{},[`Function(...)`]),`. Call arguments go inside the parentheses separated by`,`
`,`commas.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"variable"},[`greet`]),`(`,A('span',{class:"string"},[`"World"`]),`)
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`greet`]),`(`,A('span',{class:"string"},[`"Joe"`]),`, `,A('span',{class:"keyword"},[`true`]),`)`])])]),A('p',{},[`The `,A('code',{},[`Function`]),` type is a special type because it describes a function`,`
`,`instead of data. The type arguments of the type represent the types`,`
`,`of the arguments of the actual function itself and the `,A('strong',{},[`last argument`]),`
`,`represents the `,A('strong',{},[`return type`]),` of the function.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// Function(String, String)`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`fun`]),` greet (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`String`]),` { `,A('span',{class:"variable"},[`name`]),` }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// Function(Function(a, b), Array(a), Array(b))`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`fun`]),` map (
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`interator`]),` : `,A('span',{class:"type"},[`Function`]),`(`,A('span',{class:"type_parameter"},[`a`]),`, `,A('span',{class:"type_parameter"},[`b`]),`),
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`array`]),` : `,A('span',{class:"type"},[`Array`]),`(`,A('span',{class:"type_parameter"},[`a`]),`)
`]),A('span',{class:"line"},[`) : `,A('span',{class:"type"},[`Array`]),`(`,A('span',{class:"type_parameter"},[`b`]),`) {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`for`]),` `,A('span',{class:"variable"},[`item`]),` `,A('span',{class:"keyword"},[`of`]),` `,A('span',{class:"variable"},[`array`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`iterator`]),`(`,A('span',{class:"variable"},[`item`]),`)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`The type checker checks the calls at compile time and will show errors`,`
`,`if there is a mismatch of the arguments or return type.`]),A('p',{},[`Function calls can be chained:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`greet`]),` =
`]),A('span',{class:"line"},[`  (`,A('span',{class:"variable"},[`greeting`]),` : `,A('span',{class:"type"},[`String`]),`) {
`]),A('span',{class:"line"},[`    (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`) {
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"#{`]),A('span',{class:"variable"},[`greeting`]),A('span',{class:"string"},[`}`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}!"`]),`
`]),A('span',{class:"line"},[`    }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`greet`]),`(`,A('span',{class:"string"},[`"Hello"`]),`)(`,A('span',{class:"string"},[`"World"`]),`)`])])])])}),d=c;export default d;