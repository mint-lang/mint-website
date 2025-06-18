import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Highlight File Directive`]),A('p',{},[`The `,A('code',{},[`@highlight-file`]),` directive returns the syntax highlighted version of`,`
`,`the referenced file as `,A('code',{},[`Html`]),`. It is mainly used to display Mint source`,`
`,`code of examples in documentation.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// Button.mint`]),`
`]),A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`button`]),`>
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"Hello World!"`]),`
`]),A('span',{class:"line"},[`</`,A('span',{class:"namespace"},[`button`]),`>
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// Main.mint`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`@highlight-file`]),`(Button.mint)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`The contents of the file is not checked and won`,`'`,`t show any errors if it`,`'`,`s`,`
`,`not valid (syntax or type checking wise).`])]),b=a;export default b;