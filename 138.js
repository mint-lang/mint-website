import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Components`]),A('p',{},[`Components are the building blocks of any application. They define what and`,`
`,`how to display on the screen, and they can be composed inside each other.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Greeter`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`property`]),` name : `,A('span',{class:"type"},[`String`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`root`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`color`]),`: blue;
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`::root>
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"Hello`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}!"`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"type"},[`Greeter`]),` name=`,A('span',{class:"string"},[`"Joe"`]),`/>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`You can read more about the specific features of components on different`,`
`,`pages:`]),A('ul',{},[A('li',{},[A('a',{href:"/reference/components/properties"},[`Properties`])]),A('li',{},[A('a',{href:"/reference/styling/introduction"},[`Styling`])]),A('li',{},[A('a',{href:"/reference/components/connecting-to-stores"},[`Connecting to Stores`])]),A('li',{},[A('a',{href:"/reference/components/using-providers"},[`Using Providers`])]),A('li',{},[A('a',{href:"/reference/components/referencing-entities"},[`Referencing Entities`])]),A('li',{},[A('a',{href:"/reference/components/lifecycle-functions"},[`Lifecycle Functions`])]),A('li',{},[A('a',{href:"/reference/components/global-components"},[`Global Components`])]),A('li',{},[A('a',{href:"/reference/components/async-components"},[`Async Components`])])])]),b=a;export default b;