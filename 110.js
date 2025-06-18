import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Tuple`]),A('p',{},[`A tuple is a data structure which contains a fixed set of values, where`,`
`,`each value can have a different type.`]),A('ul',{},[A('li',{},[`they can contain two or more of items (no empty or single element)`]),A('li',{},[`they are useful when you don`,`'`,`t want to declare a record`]),A('li',{},[`their items can be destuctured and matched against`])]),A('h2',{},[`Type`]),A('p',{},[`The type of tuples is `,A('code',{},[`Tuple(type1, type2, ...)`]),` where each parameter is`,`
`,`an item of a tuple.`]),A('p',{},[`For example the type `,A('code',{},[`Tuple(String, Number, Bool)`]),` represents a tuple`,`
`,`where the first element is a `,A('code',{},[`String`]),` the second is a `,A('code',{},[`Number`]),` and the`,`
`,`third is a `,A('code',{},[`Bool`])]),A('h2',{},[`Syntax`]),A('p',{},[`Tuples can be created with the following syntax:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`{`,A('span',{class:"string"},[`"First Value"`]),`, `,A('span',{class:"number"},[`10`]),`, `,A('span',{class:"keyword"},[`true`]),`} `,A('span',{class:"comment"},[`// Tuple(String, Number, Bool)`])])])]),A('h2',{},[`Destructuring`]),A('p',{},[`To get the items of a tuple, we need to destructure it (assign each item`,`
`,`to a variable) or use brackets `,A('code',{},[`[]`]),`:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` {`,A('span',{class:"variable"},[`first`]),`, `,A('span',{class:"variable"},[`second`]),`, `,A('span',{class:"variable"},[`third`]),`} =
`]),A('span',{class:"line"},[`  {`,A('span',{class:"string"},[`"First Value"`]),`, `,A('span',{class:"number"},[`10`]),`, `,A('span',{class:"keyword"},[`true`]),`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`{`,A('span',{class:"string"},[`"First Value"`]),`, `,A('span',{class:"number"},[`10`]),`, `,A('span',{class:"keyword"},[`true`]),`}[`,A('span',{class:"number"},[`0`]),`] `,A('span',{class:"comment"},[`/* "First Value" */`])])])]),A('p',{},[`Destructuring can be used in `,A('strong',{},[`statements`]),`, `,A('strong',{},[`case expressions`]),` and`,`
`,A('strong',{},[`for expressions`]),`:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`case`]),` {`,A('span',{class:"string"},[`"First Value"`]),`, `,A('span',{class:"number"},[`10`]),`, `,A('span',{class:"keyword"},[`true`]),`} {
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`/* match by value (will not match) */`]),`
`]),A('span',{class:"line"},[`  {`,A('span',{class:"string"},[`"A"`]),`, `,A('span',{class:"number"},[`0`]),`, `,A('span',{class:"keyword"},[`false`]),`} => `,A('span',{class:"string"},[`"A"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`/* match by value (will match) */`]),`
`]),A('span',{class:"line"},[`  {`,A('span',{class:"string"},[`"First Value"`]),`, `,A('span',{class:"number"},[`10`]),`, `,A('span',{class:"keyword"},[`true`]),`} => `,A('span',{class:"string"},[`"B"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`/* destructure */`]),`
`]),A('span',{class:"line"},[`  {`,A('span',{class:"variable"},[`a`]),`, `,A('span',{class:"variable"},[`b`]),`, `,A('span',{class:"variable"},[`c`]),`} => `,A('span',{class:"variable"},[`a`]),`
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`let`]),` {`,A('span',{class:"variable"},[`first`]),`, `,A('span',{class:"variable"},[`second`]),`, `,A('span',{class:"variable"},[`third`]),`} =
`]),A('span',{class:"line"},[`  {`,A('span',{class:"string"},[`"First Value"`]),`, `,A('span',{class:"number"},[`10`]),`, `,A('span',{class:"keyword"},[`true`]),`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`for`]),` ({`,A('span',{class:"variable"},[`x`]),`, `,A('span',{class:"variable"},[`y`]),`} `,A('span',{class:"keyword"},[`of`]),` [{`,A('span',{class:"number"},[`0`]),`, `,A('span',{class:"number"},[`0`]),`}]) {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`x`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"variable"},[`y`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`When matching tuples in a case expression, a destructuring will make it`,`
`,`exhaustive.`])]),b=a;export default b;