import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Svg Directive`]),A('p',{},[`The `,A('code',{},[`@svg`]),` directive allows you to `,A('strong',{},[`inline an `,A('a',{href:"https://en.wikipedia.org/wiki/SVG"},[`SVG file`])]),` as `,A('code',{},[`Html`]),`:`]),A('pre',{},[A('code',{},[A('span',{class:"line"},[`my-app`]),A('span',{class:"line"},[`├── svgs`]),A('span',{class:"line"},[`│   └── icon.svg`]),A('span',{class:"line"},[`├── source`]),A('span',{class:"line"},[`│   └── Main.mint`]),A('span',{class:"line"},[`└── mint.json`])])]),A('p',{},[`This component inlines the `,A('code',{},[`icon.svg`]),` from the `,A('code',{},[`svgs`]),` folder.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"keyword"},[`@svg`]),`(../svgs/icon.svg)
`]),A('span',{class:"line"},[`      `,A('span',{class:"keyword"},[`@svg`]),`(/svgs/icon.svg)
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`It`,`'`,`s (almost) the same as copy-pasting the SVG itself into the code.`]),A('h2',{},[`Requirements`]),A('p',{},[`The inlined `,A('strong',{},[`SVG needs to be valid`]),` - the compiler will try to parse it`,`
`,`and if it fails will show a nice error message - and required to have the`,`
`,`following attributes (in order to be rendered correctly): `,A('strong',{},[`viewBox`]),`,`,`
`,A('strong',{},[`height`]),` and `,A('strong',{},[`width`]),`.`])]),b=a;export default b;