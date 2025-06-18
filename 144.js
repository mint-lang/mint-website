import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Lifecycle Functions`]),A('p',{},[`Components have the following lifecycle functions:`]),A('ul',{},[A('li',{},[A('strong',{},[`componentDidMount`]),` - called when the component is mounted`]),A('li',{},[A('strong',{},[`componentDidUpdate`]),` - called when the component is updated`]),A('li',{},[A('strong',{},[`componentWillUnmount`]),` - called when the component is about to be unmounted`])]),A('p',{},[`Here are examples for each:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Test`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` componentDidMount : `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Debug`]),`.`,A('span',{class:"variable"},[`log`]),`(`,A('span',{class:"string"},[`"MOUNTED"`]),`)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` componentDidUpdate : `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Debug`]),`.`,A('span',{class:"variable"},[`log`]),`(`,A('span',{class:"string"},[`"UPDATED"`]),`)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` componentWillUnmount : `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Debug`]),`.`,A('span',{class:"variable"},[`log`]),`(`,A('span',{class:"string"},[`"WILL UNMOUNT"`]),`)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"Hello!"`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])])]),b=a;export default b;