import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun add(a : Number, b : Number) : Number {
    a + b
  }

  fun render : Html {
    let addOneV1 = (x : Number) { add(1, x) }
    let addOneV2 = add(1, _)

    <div>
      addOneV1(2)
      <br/>
      addOneV2(2)
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`Mint has a shorthand syntax for creating anonymous functions that take some`,`
`,`arguments and immediately call another function with those arguments:`,`
`,`the function capture syntax.`]),A('p',{},[`The anonymous function `,A('code',{},[`(a : a, b : b) { some_function(..., a, b, ...) }`]),` can be`,`
`,`written as `,A('code',{},[`some_function(..., _, _,...)`]),`, with any number of other`,`
`,`arguments passed directly to the inner function. The underscore `,A('code',{},[`_`]),` is a`,`
`,`placeholder for the arguments.`])])}),d=c;export default d;