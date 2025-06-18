import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Functions`]),A('p',{},[`Functions are callable pieces of code which:`]),A('ul',{},[A('li',{},[`can take 0 or more parameters`]),A('li',{},[`can have 1 or more statements`]),A('li',{},[`can be defined in `,A('strong',{},[`components`]),`, `,A('strong',{},[`modules`]),`, `,A('strong',{},[`stores`]),`, and`,`
`,A('strong',{},[`providers`])])]),A('p',{},[`A function is defined by the `,A('code',{},[`fun`]),` keyword followed by its `,A('strong',{},[`name`]),`,`,`
`,A('strong',{},[`arguments`]),` and `,A('strong',{},[`return type`]),`:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`fun`]),` greet (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"Hello "`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"variable"},[`name`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"string"},[`"!"`]),`
`]),A('span',{class:"line"},[`  </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Things to keep in mind:`]),A('ul',{},[A('li',{},[A('p',{},[`the name of the function must start with a lowercase letter and only`,`
`,`contain letters and numbers`])]),A('li',{},[A('p',{},[`type annotations for the arguments are mandatory`])]),A('li',{},[A('p',{},[`the return type annotation is optional, if not provided the return type`,`
`,`will be inferred from last statement`])]),A('li',{},[A('p',{},[`the parentheses for the arguments can be left off if the function does`,`
`,`not take any arguments.`])])]),A('h2',{},[`Calling a function`]),A('p',{},[`You call a function with its name, providing zero or more arguments`,`
`,`separated by commas in parentheses.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`fun`]),` greet (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"Hello "`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"variable"},[`name`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"string"},[`"!"`]),`
`]),A('span',{class:"line"},[`  </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`greet`]),`(`,A('span',{class:"string"},[`"Bob"`]),`)`])])]),A('p',{},[`If the function belongs to a `,A('strong',{},[`store`]),` or a `,A('strong',{},[`module`]),`, you can call it`,`
`,`like this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`module`]),` `,A('span',{class:"type"},[`Greeter`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` greet (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"Hello "`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"variable"},[`name`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"string"},[`"!"`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Greeter`]),`.`,A('span',{class:"variable"},[`greet`]),`(`,A('span',{class:"string"},[`"Bob"`]),`)`])])]),A('h2',{},[`Default arguments`]),A('p',{},[`A function can specify default values for the last parameters:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`fun`]),` greet (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`"Joe"`]),`) : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"Hello "`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"variable"},[`name`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"string"},[`"!"`]),`
`]),A('span',{class:"line"},[`  </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`greet`]),`(`,A('span',{class:"string"},[`"Bob"`]),`) `,A('span',{class:"comment"},[`/* Hello Bob! */`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`greet`]),`()      `,A('span',{class:"comment"},[`/* Hello Joe! */`])])])]),A('h2',{},[`Calling with named arguments`]),A('p',{},[`All arguments can also be specified, in addition to their position, by`,`
`,`their name. For example:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`fun`]),` greet (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`, `,A('span',{class:"variable"},[`suffix`]),` : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`"!"`]),`) : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"Hello "`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"variable"},[`name`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"variable"},[`suffix`]),`
`]),A('span',{class:"line"},[`  </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`greet`]),`(`,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"Bob"`]),`) `,A('span',{class:"comment"},[`/* Hello Bob! */`])])])]),A('p',{},[`When there are many arguments, the order of the names in the invocation`,`
`,`doesn`,`'`,`t matter, as long as all required parameters are covered:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"variable"},[`greet`]),`(`,A('span',{class:"variable"},[`suffix`]),`: `,A('span',{class:"string"},[`"?"`]),`, `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"Bob"`]),`)`])])]),A('blockquote',{},[A('p',{},[`Normal arguments and named arguments cannot be used together.`])]),A('h2',{},[`Functions as arguments`]),A('p',{},[`You can define a function which takes a function as an argument. The type`,`
`,`of this argument must be defined and must match the type of the actual`,`
`,`function passed at runtime. The function can be an `,A('strong',{},[`anonymous`]),` or`,`
`,A('strong',{},[`named`]),` function.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`fun`]),` greet (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"Hello "`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"variable"},[`name`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"string"},[`"!"`]),`
`]),A('span',{class:"line"},[`  </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`fun`]),` showGreeting (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`, `,A('span',{class:"variable"},[`greeter`]),` : `,A('span',{class:"type"},[`Function`]),`(`,A('span',{class:"type"},[`String`]),`, `,A('span',{class:"type"},[`Html`]),`)) : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`greeter`]),`(`,A('span',{class:"variable"},[`name`]),`)
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`showGreeting`]),`(`,A('span',{class:"string"},[`"Bob"`]),`, `,A('span',{class:"type"},[`Greeter`]),`.`,A('span',{class:"variable"},[`greet`]),`)`])])]),A('p',{},[`Here we passed the `,A('code',{},[`Greeter.greet`]),` function as an argument.`]),A('h2',{},[`Type of functions`]),A('p',{},[`Functions have a specific type signature, like everything else in Mint.`,`
`,`The type for the function includes the types of its arguments (in`,`
`,`parentheses) and the return value (as last) in a list.`]),A('p',{},[`For a function like:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`fun`]),` greet (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"Hello "`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"variable"},[`name`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"string"},[`"!"`]),`
`]),A('span',{class:"line"},[`  </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`The type is:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"type"},[`Function`]),`(`,A('span',{class:"type"},[`String`]),`, `,A('span',{class:"type"},[`Html`]),`)`])])]),A('p',{},[`This can be read as: a function which takes a `,A('code',{},[`String`]),` and returns `,A('code',{},[`Html`]),`.`]),A('h2',{},[`Anonymous functions`]),A('p',{},[`Anonymous functions look like this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`(`,A('span',{class:"variable"},[`suffix`]),` : `,A('span',{class:"type"},[`String`]),`, `,A('span',{class:"variable"},[`match`]),` : `,A('span',{class:"type"},[`Regex.Match`]),`) : `,A('span',{class:"type"},[`String`]),` { `,A('span',{class:"variable"},[`match`]),`.`,A('span',{class:"variable"},[`match`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"variable"},[`suffix`]),` }
`]),A('span',{class:"line"},[`(`,A('span',{class:"variable"},[`event`]),` : `,A('span',{class:"type"},[`Number`]),`) : `,A('span',{class:"type"},[`Void`]),` { `,A('span',{class:"variable"},[`handleClick`]),`(`,A('span',{class:"variable"},[`event`]),`) }
`]),A('span',{class:"line"},[`() : `,A('span',{class:"type"},[`Void`]),` { `,A('span',{class:"number"},[`42`]),` }`])])]),A('p',{},[`The anonymous function starts with one or more argument definitions`,`
`,`enclosed by parentheses followed by the type definition after a colon`,`
`,`(`,A('code',{},[`:`]),`), then expressions enclosed by brackets.`]),A('p',{},[`This can be used as an expression anywhere you would use a value:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`div`]),` onClick={(`,A('span',{class:"variable"},[`event`]),` : `,A('span',{class:"type"},[`Html.Event`]),`) : `,A('span',{class:"type"},[`String`]),` { `,A('span',{class:"type"},[`Debug`]),`.`,A('span',{class:"variable"},[`log`]),`(`,A('span',{class:"string"},[`"Hello"`]),`) }}>
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"Click Me!"`]),`
`]),A('span',{class:"line"},[`  </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Recursive Functions`]),A('p',{},[`All functions can be called recursively:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`fun`]),` fibonacci(`,A('span',{class:"variable"},[`num`]),` : `,A('span',{class:"type"},[`Number`]),`) : `,A('span',{class:"type"},[`Number`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"variable"},[`num`]),` `,A('span',{class:"operator"},[`<=`]),` `,A('span',{class:"number"},[`1`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"number"},[`1`]),`
`]),A('span',{class:"line"},[`  } `,A('span',{class:"keyword"},[`else`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`fibonacci`]),`(`,A('span',{class:"variable"},[`num`]),` `,A('span',{class:"operator"},[`-`]),` `,A('span',{class:"number"},[`1`]),`) `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"variable"},[`fibonacci`]),`(`,A('span',{class:"variable"},[`num`]),` `,A('span',{class:"operator"},[`-`]),` `,A('span',{class:"number"},[`2`]),`)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`fibonacci`]),`(`,A('span',{class:"number"},[`10`]),`)`])])]),A('blockquote',{},[A('p',{},[`Be careful when using recursive functions, the type-checker does not`,`
`,`check if there is an exit condition, if there is not, it will cause an`,`
`,`infinite loop at runtime.`])]),A('h2',{},[`Pipe operator`]),A('p',{},[`The pipe operator (`,A('code',{},[`|>`]),`) can be used to pipe an expression into a`,`
`,`function as the `,A('strong',{},[`first parameter`]),`:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"string"},[`" Joe "`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"operator"},[`|>`]),` `,A('span',{class:"type"},[`String`]),`.`,A('span',{class:"variable"},[`toUppercase`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"operator"},[`|>`]),` `,A('span',{class:"type"},[`String`]),`.`,A('span',{class:"variable"},[`trim`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"operator"},[`|>`]),` `,A('span',{class:"type"},[`String`]),`.`,A('span',{class:"variable"},[`indent`]),`(`,A('span',{class:"number"},[`2`]),`)
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`/* Is the same as */`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`String`]),`.`,A('span',{class:"variable"},[`indent`]),`(`,A('span',{class:"type"},[`String`]),`.`,A('span',{class:"variable"},[`trim`]),`(`,A('span',{class:"type"},[`String`]),`.`,A('span',{class:"variable"},[`toUppercase`]),`(`,A('span',{class:"string"},[`" Joe "`]),`)), `,A('span',{class:"number"},[`2`]),`)`])])]),A('p',{},[`Using this operator makes the code more readable.`]),A('h2',{},[`Function Captures`]),A('p',{},[`Mint has a shorthand syntax for creating anonymous functions that take some`,`
`,`arguments and immediately call another function with those arguments:`,`
`,`the function capture syntax.`]),A('p',{},[`The anonymous function `,A('code',{},[`(a : a, b : b) { some_function(..., a, b, ...) }`]),` can be`,`
`,`written as `,A('code',{},[`some_function(..., _, _,...)`]),`, with any number of other`,`
`,`arguments passed directly to the inner function. The underscore `,A('code',{},[`_`]),` is a`,`
`,`placeholder for the arguments.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`fun`]),` add(`,A('span',{class:"variable"},[`a`]),` : `,A('span',{class:"type"},[`Number`]),`, `,A('span',{class:"variable"},[`b`]),` : `,A('span',{class:"type"},[`Number`]),`) : `,A('span',{class:"type"},[`Number`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`a`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"variable"},[`b`]),`
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`addOneV1`]),` = (`,A('span',{class:"variable"},[`x`]),` : `,A('span',{class:"type"},[`Number`]),`) { `,A('span',{class:"variable"},[`add`]),`(`,A('span',{class:"number"},[`1`]),`, `,A('span',{class:"variable"},[`x`]),`) }
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`addOneV2`]),` = `,A('span',{class:"variable"},[`add`]),`(`,A('span',{class:"number"},[`1`]),`, _)`])])])]),b=a;export default b;