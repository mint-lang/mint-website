import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : String {
    @inline(data.txt)
  }
}`}),b({path:`data.txt`,solution:``,contents:`Hello World!`})],contents:A(B,{},[A('p',{},[`The `,A('code',{},[`@inline`]),` directive allows you to inline the contents of a file as`,`
`,A('code',{},[`String`]),`. This is useful for if you don`,`'`,`t want to make extra HTTP`,`
`,`requests to display the data contained in the files.`]),A('p',{},[`The referenced file is `,A('strong',{},[`relative to the file the directive is defined`,`
`,`in`]),`.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// Main.mint`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`@inline`]),`(data.txt)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`In the example above, the `,A('code',{},[`data.txt`]),` is in the same directory as the`,`
`,A('code',{},[`Main.mint`]),` file.`]),A('hr',{},[]),A('p',{},[`For more information, check out the `,A('a',{href:"/reference/directives/inline"},[`reference page`]),`.`])])}),d=c;export default d;