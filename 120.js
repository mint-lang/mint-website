import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Stores`]),A('p',{},[`Stores are global containers of application specific data. They are defined`,`
`,`with the `,A('code',{},[`store`]),` keyword:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`store`]),` `,A('span',{class:"type"},[`Counter.Store`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`counter`]),` : `,A('span',{class:"type"},[`Number`]),` = `,A('span',{class:"number"},[`0`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` increment : `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`counter`]),`: `,A('span',{class:"variable"},[`counter`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"number"},[`1`]),` }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` decrement : `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`counter`]),`: `,A('span',{class:"variable"},[`counter`]),` `,A('span',{class:"operator"},[`-`]),` `,A('span',{class:"number"},[`1`]),` }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`In the example above, we defined a store for a global counter with a`,`
`,`function to increment it and one to decrement it.`]),A('p',{},[`Stores are:`]),A('ul',{},[A('li',{},[A('p',{},[A('strong',{},[`global`]),` - which means they are accessible from anywhere (for example:`,`
`,A('code',{},[`Counter.Store.counter`]),`).`])]),A('li',{},[A('p',{},[A('strong',{},[`mutable`]),` - their data can be changed using a `,A('code',{},[`next`]),` call (but only`,`
`,`inside the store)`])]),A('li',{},[A('p',{},[`they can only contain `,A('a',{href:"/reference/functions"},[`functions`]),`, `,A('a',{href:"/reference/state-management"},[`states`]),`, `,A('a',{href:"/reference/components/computed-properties"},[`computed properties`]),` and`,`
`,A('a',{href:"/reference/constants"},[`constants`]),`.`])])]),A('p',{},[`You can read more on mutation in `,A('a',{href:"/reference/state-management"},[`state management`]),` page.`]),A('h2',{},[`Connecting to Components`]),A('p',{},[`Stores can be connected to components to expose entities in the components`,`
`,`scope using the `,A('code',{},[`connect`]),` keyword:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`connect`]),` `,A('span',{class:"type"},[`Counter`]),` `,A('span',{class:"keyword"},[`exposing`]),` { counter, increment, decrement }
`]),A('span',{class:"line"},[`}`])])])]),b=a;export default b;