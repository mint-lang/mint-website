import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Using Providers`]),A('p',{},[`A `,A('a',{href:"/reference/providers"},[`provider`]),` represents a source of asynchronous events. To subscribe to a`,`
`,`provider, you `,A('code',{},[`use`]),` it and pass it a record that contains the subscription`,`
`,`data.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`counter`]),` : `,A('span',{class:"type"},[`Number`]),` = `,A('span',{class:"number"},[`0`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`use`]),` `,A('span',{class:"type"},[`Provider.Tick`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`ticks`]),`: () : `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`) {
`]),A('span',{class:"line"},[`      `,A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`counter`]),`: `,A('span',{class:"variable"},[`counter`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"number"},[`1`]),` }
`]),A('span',{class:"line"},[`    }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"type"},[`Number`]),`.`,A('span',{class:"variable"},[`toString`]),`(`,A('span',{class:"variable"},[`counter`]),`)
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`In the above example, we will update the counter every second using the`,`
`,A('a',{href:"https://github.com/mint-lang/mint/blob/master/core/source/Provider/Tick.mint"},[`tick provider`]),`. You can check other built-in providers `,A('a',{href:"https://github.com/mint-lang/mint/blob/master/core/source/Provider/"},[`here`]),`.`])]),b=a;export default b;