import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Constants`]),A('p',{},[`Constants may be useful for values that are used throughout your program,`,`
`,`permitting them to be named and to ensure there are no differences in the`,`
`,`definition between each use.`]),A('p',{},[`They can be added to `,A('strong',{},[`stores`]),`, `,A('strong',{},[`modules`]),`, `,A('strong',{},[`providers`]),`,`,`
`,A('strong',{},[`suites`]),`, and `,A('strong',{},[`components`]),`. The name of a constant must be in`,`
`,`all-uppercase characters, and their type is inferred from their value.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`module`]),` `,A('span',{class:"type"},[`Math`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`const`]),` `,A('span',{class:"type"},[`PI`]),` = `,A('span',{class:"number"},[`3.141592653589793`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`They can be accessed like variables inside the scope of the entity`,`
`,`which defined them, and from outside they can be accessed with the`,`
`,`following syntax:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"type"},[`Math`]),`.`,A('span',{class:"type"},[`PI`])])])])]),b=a;export default b;