import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Program`]),A('p',{},[`The program is the entirety of the source code worked by the compiler. The`,`
`,`source gets `,A('strong',{},[`parsed`]),`, `,A('strong',{},[`type checked`]),` and `,A('strong',{},[`compiled`]),` to `,A('strong',{},[`an HTML`,`
`,`file`]),`, `,A('strong',{},[`a CSS file`]),` and one or more `,A('strong',{},[`JavaScript files`]),` which`,`
`,`eventually gets executed in a web browser.`]),A('p',{},[`The program’s source code must be encoded in UTF-8.`]),A('h2',{},[`Top Level Scope`]),A('p',{},[`Only `,A('a',{href:"/reference/modules"},[`modules`]),`, `,A('a',{href:"/reference/types/custom-types"},[`custom types`]),`, `,A('a',{href:"/reference/components/introduction"},[`components`]),`, `,A('a',{href:"/reference/providers"},[`providers`]),`, `,A('a',{href:"/reference/locale"},[`locale`,`
`,`definitions`]),`, `,A('a',{href:"/reference/routes"},[`routes`]),`, `,A('a',{href:"/reference/stores"},[`stores`]),` and `,A('a',{href:"/reference/comments"},[`comments`]),` can be defined in the`,`
`,`top-level scope.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// This is a comment in the top level scope describing the module.`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`module`]),` `,A('span',{class:"type"},[`Unicorn`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// This is for the contents of the module.`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`All top level entities defined in one file are available to all other files`,`
`,`in the same project (this includes used packages) so `,A('a',{href:"/reference/source-files"},[`there is no feature`,`
`,`for importing files`]),`.`]),A('h2',{},[`Main Code`]),A('p',{},[`The `,A('code',{},[`Main`]),` component is the one which gets executed and drawn to the page`,`
`,`when the program is run.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"Hello World!"`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])])]),b=a;export default b;