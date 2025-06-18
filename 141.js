import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Connecting Stores`]),A('p',{},[`Components refer to stores in order to use functions and properties from`,`
`,`them, which can be done with `,A('code',{},[`connect`]),` keyword:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`store`]),` `,A('span',{class:"type"},[`Counter`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`count`]),` : `,A('span',{class:"type"},[`Number`]),` = `,A('span',{class:"number"},[`0`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` setCount (`,A('span',{class:"variable"},[`count`]),` : `,A('span',{class:"type"},[`Number`]),`) : `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`count`]),`: `,A('span',{class:"variable"},[`count`]),` }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`connect`]),` `,A('span',{class:"type"},[`Counter`]),` `,A('span',{class:"keyword"},[`exposing`]),` { count, setCount }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` handleClick (`,A('span',{class:"variable"},[`event`]),` : `,A('span',{class:"type"},[`Html.Event`]),`) : `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`setCount`]),`(`,A('span',{class:"variable"},[`count`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"number"},[`1`]),`)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` handleContextMenu (`,A('span',{class:"variable"},[`event`]),` : `,A('span',{class:"type"},[`Html.Event`]),`) : `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`setCount`]),`(`,A('span',{class:"number"},[`0`]),`)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`
`]),A('span',{class:"line"},[`      onContextMenu={`,A('span',{class:"variable"},[`handleContextMenu`]),`}
`]),A('span',{class:"line"},[`      onClick={`,A('span',{class:"variable"},[`handleClick`]),`}>
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"Count: "`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"type"},[`Number`]),`.`,A('span',{class:"variable"},[`toString`]),`(`,A('span',{class:"variable"},[`count`]),`)
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`When connecting a store, the component must use the `,A('code',{},[`exposing`]),` keyword to`,`
`,`list the particular functions or properties it will use.`]),A('h2',{},[`Exposing with a different name`]),A('p',{},[`You can expose a connected function or property by a different name using`,`
`,`the `,A('code',{},[`as`]),` notation:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`connect`]),` `,A('span',{class:"type"},[`Counter`]),` `,A('span',{class:"keyword"},[`exposing`]),` { count `,A('span',{class:"keyword"},[`as`]),` `,A('span',{class:"variable"},[`myCount`]),` }`])])])]),b=a;export default b;