import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Signals`]),A('p',{},[`Signals are a special version of a `,A('code',{},[`state`]),` which can modify itself in`,`
`,`reaction to outside events.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`signal`]),` `,A('span',{class:"variable"},[`greeting`]),` : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// After 1000 milliseconds emit a new value.`]),`
`]),A('span',{class:"line"},[`  {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`await`]),` `,A('span',{class:"type"},[`Timer`]),`.`,A('span',{class:"variable"},[`timeout`]),`(`,A('span',{class:"number"},[`1000`]),`)
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`emit`]),` `,A('span',{class:"string"},[`"Joe!"`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// Default value`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"Hello"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Instead of a default value it requires a block which returns the default`,`
`,`value and subscribes to events. To emit a new value you can use the `,A('code',{},[`emit`]),`
`,`keyword.`]),A('blockquote',{},[A('p',{},[`Signals can only be used in `,A('a',{href:"/reference/stores"},[`stores`]),` and `,A('a',{href:"/reference/providers"},[`providers`]),`.`])])]),b=a;export default b;