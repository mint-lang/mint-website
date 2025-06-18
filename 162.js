import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Builtins`]),A('blockquote',{},[A('p',{},[`This is an implementation feature, if you need to use this, you should`,`
`,`get in contact with a maintainer. This documentation is for`,`
`,`informational purposes only.`])]),A('p',{},[`Mint has a `,A('a',{href:"https://github.com/mint-lang/mint/tree/master/runtime"},[`runtime`]),` written in JavaScript which is basically a collection`,`
`,`of functions that cannot be implemented in Mint and are needed for rendering,`,`
`,`testing and interfacing with the browser.`]),A('p',{},[`There is a language feature to call these functions called `,A('strong',{},[`builtins`]),`.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`content`]),` =
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`div`]),`>`,A('span',{class:"string"},[`"Hello World"`]),`</`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`\`#{%createPortal%}(#{`,A('span',{class:"variable"},[`content`]),`}, document.body)\``])])]),A('p',{},[`In the example above, the `,A('code',{},[`%createPortal%`]),` is a builtin. In the compiled`,`
`,`version, the function will be imported from the runtime and given a name`,`
`,`something like this (pseudocode):`]),A('pre',{},[A('code',{class:"language-js"},[A('span',{class:"line"},[`import { createPortal as A } from "runtime.js";`]),A('span',{class:"line"},[``]),A('span',{class:"line"},[`// Later on will be called like so.`]),A('span',{class:"line"},[`A(content, document.body)`])])]),A('p',{},[`Builtins cannot be used elsewhere just in interpolations in inlined`,`
`,`JavaScript, and they are untyped (their type is `,A('code',{},[`Void`]),`).`]),A('p',{},[`These are the currently exposed builtins: `,A('code',{},[`decodeBoolean`]),`, `,A('code',{},[`decodeNumber`]),`,`,`
`,A('code',{},[`decodeString`]),`, `,A('code',{},[`decodeArray`]),`, `,A('code',{},[`decodeField`]),`, `,A('code',{},[`decodeMaybe`]),`, `,A('code',{},[`decodeTime`]),`,`,`
`,A('code',{},[`locale`]),`, `,A('code',{},[`normalizeEvent`]),`, `,A('code',{},[`createPortal`]),`, `,A('code',{},[`testContext`]),`, `,A('code',{},[`testRender`]),`,`,`
`,A('code',{},[`setLocale`]),`, `,A('code',{},[`navigate`]),`, `,A('code',{},[`compare`]),`, `,A('code',{},[`nothing`]),`, `,A('code',{},[`just`]),`, `,A('code',{},[`err`]),` and `,A('code',{},[`ok`]),`.`])]),b=a;export default b;