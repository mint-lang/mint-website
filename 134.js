import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`if ... else`]),A('p',{},[`The `,A('code',{},[`if ... else`]),` conditional expression returns one of two values based on`,`
`,`the condition. It looks like this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"variable"},[`condition`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`value1`]),`
`]),A('span',{class:"line"},[`} `,A('span',{class:"keyword"},[`else`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`value2`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`You will get nice error messages if the following is not met:`]),A('ul',{},[A('li',{},[`The condition must evaluate to type `,A('code',{},[`Bool`])]),A('li',{},[`The values of both branches must evaluate to the same type`]),A('li',{},[`In most cases, the else branch must be present, this ensures you handle`,`
`,`all possibilities.`])]),A('h2',{},[`else if ...`]),A('p',{},[`Multiple `,A('code',{},[`if...else`]),` statements can be written in sequence (the brackets`,`
`,`for the `,A('code',{},[`else`]),` branch can be omitted):`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"variable"},[`number`]),` `,A('span',{class:"operator"},[`>`]),` `,A('span',{class:"number"},[`5`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`true`]),`
`]),A('span',{class:"line"},[`} `,A('span',{class:"keyword"},[`else`]),` `,A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"variable"},[`number`]),` `,A('span',{class:"operator"},[`>`]),` `,A('span',{class:"number"},[`2`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`true`]),`
`]),A('span',{class:"line"},[`} `,A('span',{class:"keyword"},[`else`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`false`]),`
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Omitting else`]),A('p',{},[`The else branch can be omitted in the following cases:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// In styles...`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`root`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"variable"},[`condition`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`color`]),`: red;
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// If it returns \`Html\``]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"variable"},[`condition`]),` {
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`div`]),`></`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// If it returns \`String\``]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"variable"},[`condition`]),` {
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`div`]),`></`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// If it returns \`Maybe(a)\``]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"variable"},[`condition`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Maybe`]),`.`,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"string"},[`"Hello"`]),`)
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// If it returns \`Void\``]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"variable"},[`condition`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`void`]),`
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// If it returns \`Array(a)\``]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"variable"},[`condition`]),` {
`]),A('span',{class:"line"},[`  [`,A('span',{class:"string"},[`"Hello"`]),`, `,A('span',{class:"string"},[`"World!"`]),`]
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// If it returns \`Promise(Void)\``]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"variable"},[`condition`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`value`]),`: `,A('span',{class:"string"},[`"Hello World!"`]),` }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`When that happens and the condition is `,A('code',{},[`false`]),`, an empty version of the type`,`
`,`is returned instead:`]),A('ul',{},[A('li',{},[A('code',{},[`Html`]),` - An empty fragment is returned `,A('code',{},[`<></>`])]),A('li',{},[A('code',{},[`Array(a)`]),` - An empty array is returned `,A('code',{},[`[]`])]),A('li',{},[A('code',{},[`String`]),` - An empty string is returned `,A('code',{},[`""`])]),A('li',{},[A('code',{},[`Promise(Void)`]),` - `,A('code',{},[`Promise(Void)`]),` is returned`]),A('li',{},[A('code',{},[`Maybe(a)`]),` - `,A('code',{},[`Maybe.Nothing`]),` is returned`]),A('li',{},[A('code',{},[`Void`]),` - `,A('code',{},[`Void`]),` is returned`])]),A('h2',{},[`Destructuring`]),A('p',{},[`You can destructure a value instead of providing a condition using the`,`
`,A('code',{},[`if let ... else`]),` syntax:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"type"},[`Maybe`]),A('span',{class:"type"},[`.Just`]),`(`,A('span',{class:"variable"},[`value`]),`) = `,A('span',{class:"variable"},[`maybe`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"The maybe is a \`Maybe.Just\`"`]),`
`]),A('span',{class:"line"},[`} `,A('span',{class:"keyword"},[`else`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"The maybe is a \`Maybe.Nothing\`"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`If the destructuring is successful then the main branch will be returned`,`
`,`(and all variables of the destructuring are available), if it cannot be`,`
`,`destuctured then the `,A('code',{},[`else`]),` branch will be returned.`]),A('h3',{},[`Awaiting Promises`]),A('p',{},[`You can use the `,A('code',{},[`await`]),` keyword before the subject to wait for a promise`,`
`,`to resolve before doing the pattern matching:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"type"},[`Ok`]),`(`,A('span',{class:"variable"},[`response`]),`) = `,A('span',{class:"keyword"},[`await`]),` `,A('span',{class:"variable"},[`request`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"The request succeeded!"`]),`
`]),A('span',{class:"line"},[`} `,A('span',{class:"keyword"},[`else`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"The request failed!"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`The return type of an expression like that will always be `,A('code',{},[`Promise(a)`]),`
`,`where `,A('code',{},[`a`]),` is the type of the branches.`])]),b=a;export default b;