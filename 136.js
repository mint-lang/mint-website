import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`for...of`]),A('p',{},[A('code',{},[`for...of`]),` is useful for iterating over either an `,A('code',{},[`Array(a)`]),`, `,A('code',{},[`Set(a)`]),` or a`,`
`,A('code',{},[`Map(a,b)`])]),A('p',{},[`The result of the iteration is always an array where the type of its items`,`
`,`is from the type of the expression. In this example, we iterate over an`,`
`,`array of Strings and making them uppercase:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`for`]),` `,A('span',{class:"variable"},[`item`]),` `,A('span',{class:"keyword"},[`of`]),` [`,A('span',{class:"string"},[`"bob"`]),`, `,A('span',{class:"string"},[`"joe"`]),`] {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`String`]),`.`,A('span',{class:"variable"},[`toUpperCase`]),`(`,A('span',{class:"variable"},[`item`]),`)
`]),A('span',{class:"line"},[`} `,A('span',{class:"comment"},[`// ["BOB", "JOE"]`])])])]),A('p',{},[`This example shows how to iterate over a map:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`map`]),` =
`]),A('span',{class:"line"},[`  {
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"name"`]),` => `,A('span',{class:"string"},[`"bob"`]),`,
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"age"`]),` => `,A('span',{class:"string"},[`"33"`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`for`]),` `,A('span',{class:"variable"},[`key`]),`, `,A('span',{class:"variable"},[`value`]),` `,A('span',{class:"keyword"},[`of`]),` `,A('span',{class:"variable"},[`map`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`String`]),`.`,A('span',{class:"variable"},[`toUpperCase`]),`(`,A('span',{class:"variable"},[`key`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"string"},[`": "`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"variable"},[`value`]),`)
`]),A('span',{class:"line"},[`} `,A('span',{class:"comment"},[`// ["name: bob", "age: 33"]`])])])]),A('p',{},[`The return type of this `,A('code',{},[`for...of`]),` expression is `,A('code',{},[`Array(String)`])]),A('h2',{},[`Selecting items`]),A('p',{},[`You can limit the items for which the iteration should take place with an`,`
`,`optional `,A('code',{},[`when`]),` block (if the expression is `,A('code',{},[`false`]),`, then the item will be`,`
`,`skipped):`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`for`]),` `,A('span',{class:"variable"},[`item`]),` `,A('span',{class:"keyword"},[`of`]),` [`,A('span',{class:"string"},[`"bob"`]),`, `,A('span',{class:"string"},[`"joe"`]),`] {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`String`]),`.`,A('span',{class:"variable"},[`toUpperCase`]),`(`,A('span',{class:"variable"},[`item`]),`)
`]),A('span',{class:"line"},[`} `,A('span',{class:"keyword"},[`when`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`item`]),` `,A('span',{class:"operator"},[`==`]),` `,A('span',{class:"string"},[`"bob"`]),`
`]),A('span',{class:"line"},[`} `,A('span',{class:"comment"},[`// ["BOB"]`])])])]),A('p',{},[`In the example, we specified that the expression should only run (and return)`,`
`,`for items which equals `,`"`,`bob`,`"`,`.`]),A('h2',{},[`Indexes`]),A('p',{},[`You can add an extra variable to get the index of the current item.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`for`]),` `,A('span',{class:"variable"},[`item`]),`, `,A('span',{class:"variable"},[`index`]),` `,A('span',{class:"keyword"},[`of`]),` [`,A('span',{class:"string"},[`"bob"`]),`, `,A('span',{class:"string"},[`"joe"`]),`] {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`index`]),`
`]),A('span',{class:"line"},[`} `,A('span',{class:"comment"},[`// [0, 1]`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`for`]),` `,A('span',{class:"variable"},[`key`]),`, `,A('span',{class:"variable"},[`value`]),`, `,A('span',{class:"variable"},[`index`]),` `,A('span',{class:"keyword"},[`of`]),` `,A('span',{class:"variable"},[`map`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`index`]),`
`]),A('span',{class:"line"},[`} `,A('span',{class:"comment"},[`// [0, 1]`])])])])]),b=a;export default b;