import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Computed Properties`]),A('p',{},[`Computed properties are functions that work like properties, they are`,`
`,`defined with the `,A('code',{},[`get`]),` keyword and no arguments.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Greeter`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`property`]),` name : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`""`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`get`]),` text : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"#{`]),A('span',{class:"variable"},[`word`]),A('span',{class:"string"},[`}`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}!"`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// Type annotation is optional...`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`get`]),` word {
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"Hello"`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`text`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])])]),b=a;export default b;