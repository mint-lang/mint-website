import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Documenting code`]),A('p',{},[`Documentation for API features can be written in code comments directly`,`
`,`preceding the definition of the respective feature (for example, a module`,`
`,`or a function).`]),A('p',{},[`By default, all entities are considered part of the API documentation.`]),A('h2',{},[`Association`]),A('p',{},[`Documentation comments must be positioned directly above the definition of`,`
`,`the documented feature. Usually, multi-line comments are used for this`,`
`,`purpose. Whitespace between the documentation comment and the entity are`,`
`,`allowed.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// This comment is not associated with the module.`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`/*`])]),A('span',{class:"line"},[A('span',{class:"comment"},[`First line of documentation for the module.`])]),A('span',{class:"line"},[A('span',{class:"comment"},[`Second line of documentation for the module.`])]),A('span',{class:"line"},[A('span',{class:"comment"},[`*/`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`module`]),` `,A('span',{class:"type"},[`Unicorn`]),` {
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Format`]),A('p',{},[`Documentation comments support `,A('a',{href:"https://daringfireball.net/projects/markdown/"},[`Markdown`]),`
`,`formatting.`])]),b=a;export default b;