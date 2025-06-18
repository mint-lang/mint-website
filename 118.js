import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`State Management`]),A('p',{},[`Before we cover `,A('strong',{},[`stores`]),` and `,A('strong',{},[`components`]),`, you need to learn how Mint`,`
`,`manages state.`]),A('p',{},[`In Mint everything is `,A('strong',{},[`immutable`]),`, which has the benefit of knowing that`,`
`,`data cannot accidentally change in the program.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`x`]),` = `,A('span',{class:"string"},[`"Joe"`]),` `,A('span',{class:"comment"},[`// x can't change`])])])]),A('p',{},[`Every program needs to have mutation to function, so if everything is`,`
`,`immutable how is mutation done? Mint has the concept of `,A('strong',{},[`state`]),` -`,`
`,`mutable variables that can be defined in `,A('strong',{},[`stores`]),`, `,A('strong',{},[`components`]),` and`,`
`,A('strong',{},[`providers`]),`:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`"Joe"`])])])]),A('p',{},[`A state can only be mutated in an `,A('strong',{},[`asynchronous`]),` way using the `,A('code',{},[`next`]),`
`,`expression:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Item`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`"Joe"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),` onClick={() { `,A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"Bob"`]),` } }}>
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`name`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`The return type of next expressions is `,A('code',{},[`Promise(Void)`]),` because it`,`'`,`s an`,`
`,`asynchronous operation, and it does not return any value.`]),A('p',{},[`Because it`,`'`,`s asynchronous, next expressions needs to be `,A('strong',{},[`awaited`]),` if you`,`
`,`want to use the updated value:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`await`]),` `,A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"Joe"`]),` }
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Debug`]),`.`,A('span',{class:"variable"},[`log`]),`(`,A('span',{class:"variable"},[`name`]),`) `,A('span',{class:"comment"},[`// "Joe"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"Bob"`]),` }
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Debug`]),`.`,A('span',{class:"variable"},[`log`]),`(`,A('span',{class:"variable"},[`name`]),`)
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// "Joe" - Not changed because the next wasn't awaited`])])])])]),b=a;export default b;