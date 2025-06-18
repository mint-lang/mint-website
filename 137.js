import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`defer`]),A('p',{},[`The `,A('code',{},[`defer`]),` expression marks a piece of code to be loaded at a later time.`,`
`,`It is used to split the compiled code into different files.`]),A('p',{},[`Let`,`'`,`s say that there is a part of the application which needs to be loaded`,`
`,`later because it`,`'`,`s not used right away so loading it upfront does not make`,`
`,`sense, for example the list of all countries:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`module`]),` `,A('span',{class:"type"},[`Data`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`const`]),` `,A('span',{class:"type"},[`COUNTRIES`]),` = `,A('span',{class:"keyword"},[`defer`]),` [`,A('span',{class:"string"},[`"Afghanistan"`]),`, `,A('span',{class:"string"},[`"Albania"`]),`, `,A('span',{class:"string"},[`"Algeria"`]),`]
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`By marking the expression with `,A('code',{},[`defer`]),` you tell the compiler to compile that`,`
`,`array into a different file. The type of `,A('code',{},[`COUNTRIES`]),` will be`,`
`,A('code',{},[`Deferred(Array(String))`]),`.`]),A('p',{},[`To use the list in a `,A('code',{},[`<select>`]),` tag for example, you need to load it at`,`
`,`some point with the `,A('code',{},[`await`]),` keyword:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`CountrySelector`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`countries`]),` : `,A('span',{class:"type"},[`Array`]),`(`,A('span',{class:"type"},[`String`]),`) = []
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` componentDidMount {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`countries`]),` = `,A('span',{class:"keyword"},[`await`]),` `,A('span',{class:"type"},[`Data`]),`.`,A('span',{class:"type"},[`COUNTRIES`]),`
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`countries`]),`: `,A('span',{class:"variable"},[`countries`]),` }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`select`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"keyword"},[`for`]),` `,A('span',{class:"variable"},[`country`]),` `,A('span',{class:"keyword"},[`of`]),` `,A('span',{class:"variable"},[`countries`]),` {
`]),A('span',{class:"line"},[`        <`,A('span',{class:"namespace"},[`option`]),`>`,A('span',{class:"variable"},[`country`]),`</`,A('span',{class:"namespace"},[`option`]),`>
`]),A('span',{class:"line"},[`      }
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`select`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`An alternative for the above would be to have the list of countries in a`,`
`,`JSON file and then load it in with an HTTP request, then parse and decode`,`
`,`it manually, but this way is easier because the compiler handles everything.`])]),b=a;export default b;