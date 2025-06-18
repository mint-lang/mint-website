import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Type System`]),A('p',{},[`In Mint, the types and type definitions are only for the type checker and`,`
`,`compiler, they are not available or used by the runtime.`]),A('p',{},[`Because of that types can be defined in any type definition (except for`,`
`,`composite types), so for example if `,A('code',{},[`Time`]),` is not defined as a composite`,`
`,`type then when writing this will define `,A('code',{},[`Time`]),` as a type:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`module`]),` `,A('span',{class:"type"},[`Time`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` now : `,A('span',{class:"type"},[`Time`]),` {
`]),A('span',{class:"line"},[`    \`new Date()\`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Since only this function defines this as a return type, we can safely use`,`
`,`the same type in type signatures of other functions, because the`,`
`,A('code',{},[`Time.now()`]),` is the only place values of `,A('code',{},[`Time`]),` can come from.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`fun`]),` month (`,A('span',{class:"variable"},[`time`]),` : `,A('span',{class:"type"},[`Time`]),`) : `,A('span',{class:"type"},[`Number`]),` { \`#{`,A('span',{class:"variable"},[`time`]),`}.getMonth()\` }
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`fun`]),` day (`,A('span',{class:"variable"},[`time`]),` : `,A('span',{class:"type"},[`Time`]),`) : `,A('span',{class:"type"},[`Number`]),` { \`#{`,A('span',{class:"variable"},[`time`]),`}.getDay()\` }`])])])]),b=a;export default b;