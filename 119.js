import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`State Setter`]),A('p',{},[`A lot of time you want to set a state in reaction to some event, usually`,`
`,`from inputs fields or other components like this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Input`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`property`]),` onChange : `,A('span',{class:"type"},[`Function`]),`(`,A('span',{class:"type"},[`String`]),`, `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`))
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`property`]),` value : `,A('span',{class:"type"},[`String`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`input`]),`
`]),A('span',{class:"line"},[`      onInput={(`,A('span',{class:"variable"},[`event`]),` : `,A('span',{class:"type"},[`Html.Event`]),`) { `,A('span',{class:"variable"},[`onChange`]),`(`,A('span',{class:"type"},[`Dom`]),`.`,A('span',{class:"variable"},[`getValue`]),`(`,A('span',{class:"variable"},[`event`]),`.`,A('span',{class:"variable"},[`target`]),`)) }}
`]),A('span',{class:"line"},[`      value={`,A('span',{class:"variable"},[`value`]),`}/>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Item`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`"Joe"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"type"},[`Input`]),`
`]),A('span',{class:"line"},[`      onChange={(`,A('span',{class:"variable"},[`value`]),` : `,A('span',{class:"type"},[`String`]),`) { `,A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"variable"},[`value`]),` } }}
`]),A('span',{class:"line"},[`      value={`,A('span',{class:"variable"},[`name`]),`}/>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Because this is so frequent, there is a syntax sugar for it:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`-> `,A('span',{class:"variable"},[`name`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// The above is basically just this`]),`
`]),A('span',{class:"line"},[`(`,A('span',{class:"variable"},[`value`]),` : `,A('span',{class:"type"},[`String`]),`) { `,A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"variable"},[`value`]),` } }`])])]),A('p',{},[`Here, it`,`'`,`s used in the example above:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Item`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`"Joe"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"type"},[`Input`]),`
`]),A('span',{class:"line"},[`      onChange={-> `,A('span',{class:"variable"},[`name`]),`}
`]),A('span',{class:"line"},[`      value={`,A('span',{class:"variable"},[`name`]),`}/>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])])]),b=a;export default b;