import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Inline Directive`]),A('p',{},[`The inline directive allows you to `,A('strong',{},[`inline the contents of a file`]),` as`,`
`,A('code',{},[`String`]),`:`]),A('pre',{},[A('code',{},[A('span',{class:"line"},[`my-app`]),A('span',{class:"line"},[`├── assets`]),A('span',{class:"line"},[`│   └── data.txt`]),A('span',{class:"line"},[`├── source`]),A('span',{class:"line"},[`│   └── Main.mint`]),A('span',{class:"line"},[`└── mint.json`])])]),A('p',{},[`This component inlines the `,A('code',{},[`data.txt`]),` from the `,A('code',{},[`assets`]),` folder.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"keyword"},[`@inline`]),`(../assets/data.txt)
`]),A('span',{class:"line"},[`      `,A('span',{class:"keyword"},[`@inline`]),`(/assets/data.txt)
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`It`,`'`,`s the same as copy-pasting the file itself into the code.`])]),b=a;export default b;