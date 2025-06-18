import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h2',{},[`Referencing Entities`]),A('p',{},[`Sometimes it`,`'`,`s necessary to access elements or components in a component`,`
`,`for a number of reasons. To do that you, can use the `,A('code',{},[`as name`]),` notation.`]),A('p',{},[`The usual example is to focus an element after an event happens:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` handleClick : `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Dom`]),`.`,A('span',{class:"variable"},[`focus`]),`(`,A('span',{class:"variable"},[`input`]),`)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      <`,A('span',{class:"namespace"},[`input`]),` `,A('span',{class:"keyword"},[`as`]),` `,A('span',{class:"variable"},[`input`]),`/>
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`      <`,A('span',{class:"namespace"},[`button`]),` onClick={`,A('span',{class:"variable"},[`handleClick`]),`}>
`]),A('span',{class:"line"},[`        `,A('span',{class:"string"},[`"Focus the input!"`]),`
`]),A('span',{class:"line"},[`      </`,A('span',{class:"namespace"},[`button`]),`>
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`As you can see the input variable will be a `,A('code',{},[`Maybe(Dom.Element)`]),` and this`,`
`,`is because there is no guarantee that the element will be in the DOM at the`,`
`,`time the function runs.`]),A('p',{},[`You can also reference subcomponents the same way:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Item`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`text`]),` : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`"Hello"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` update(`,A('span',{class:"variable"},[`text`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`text`]),`: `,A('span',{class:"variable"},[`text`]),` }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`text`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` handleClick : `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`case`]),` `,A('span',{class:"variable"},[`item`]),` {
`]),A('span',{class:"line"},[`      `,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"variable"},[`todoItem`]),`) => `,A('span',{class:"variable"},[`todoItem`]),`.`,A('span',{class:"variable"},[`update`]),`(`,A('span',{class:"string"},[`"Bello"`]),`)
`]),A('span',{class:"line"},[`      `,A('span',{class:"type"},[`Nothing`]),` => `,A('span',{class:"keyword"},[`next`]),` {}
`]),A('span',{class:"line"},[`    }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      <`,A('span',{class:"type"},[`Item`]),` `,A('span',{class:"keyword"},[`as`]),` `,A('span',{class:"variable"},[`item`]),`/>
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`      <`,A('span',{class:"namespace"},[`button`]),` onClick={`,A('span',{class:"variable"},[`handleClick`]),`}>
`]),A('span',{class:"line"},[`        `,A('span',{class:"string"},[`"Click me!"`]),`
`]),A('span',{class:"line"},[`      </`,A('span',{class:"namespace"},[`button`]),`>
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])])]),b=a;export default b;