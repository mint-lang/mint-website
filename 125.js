import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Field Access`]),A('p',{},[`Sometimes you want to have a function that extracts a value from a record`,`
`,`like this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`type`]),` `,A('span',{class:"type"},[`User`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`age`]),` : `,A('span',{class:"type"},[`Number`]),`
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`(`,A('span',{class:"variable"},[`user`]),` : `,A('span',{class:"type"},[`User`]),`) : `,A('span',{class:"type"},[`String`]),` { `,A('span',{class:"variable"},[`user`]),`.`,A('span',{class:"variable"},[`name`]),` }`])])]),A('p',{},[`Writing a function like this every time is not ideal, so we have a syntax`,`
`,`sugar for this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`.`,A('span',{class:"variable"},[`name`]),`(`,A('span',{class:"type"},[`User`]),`)`])])]),A('p',{},[`The above shorthand means: give me a function which returns the value of`,`
`,`the `,A('code',{},[`name`]),` field from a `,A('code',{},[`User`]),` record (which would be the exact function`,`
`,`in the first example).`]),A('p',{},[`This shorthand comes in handy when using the pipe operator:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`[
`]),A('span',{class:"line"},[`  { `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"John"`]),`, `,A('span',{class:"variable"},[`age`]),`: `,A('span',{class:"number"},[`32`]),` },
`]),A('span',{class:"line"},[`  { `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"Joe"`]),`, `,A('span',{class:"variable"},[`age`]),`: `,A('span',{class:"number"},[`32`]),` }
`]),A('span',{class:"line"},[`]
`]),A('span',{class:"line"},[``,A('span',{class:"operator"},[`|>`]),` `,A('span',{class:"type"},[`Array`]),`.`,A('span',{class:"variable"},[`map`]),`(.`,A('span',{class:"variable"},[`name`]),`(`,A('span',{class:"type"},[`User`]),`))
`]),A('span',{class:"line"},[``,A('span',{class:"operator"},[`|>`]),` `,A('span',{class:"type"},[`Array`]),`.`,A('span',{class:"variable"},[`map`]),`(`,A('span',{class:"type"},[`String`]),`.`,A('span',{class:"variable"},[`toUpperCase`]),`)`])])])]),b=a;export default b;