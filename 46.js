import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`store Data {
  state value : String = "Default value..."

  fun setValue (newValue : String) : Promise(Void) {
    next { value: newValue }
  }
}

component Main {
  fun render : Html {
    <div>
      Data.value
      <button onClick={() { Data.setValue("Hello World!") }}>
       "Set Value"
      </button>
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`A `,A('strong',{},[`store`]),` is a global entity which have state (basically a container`,`
`,`for data). It is defined with the `,A('code',{},[`store`]),` keyword and can have`,`
`,A('a',{href:"/reference/functions"},[`functions`]),`, `,A('a',{href:"/reference/constants"},[`constants`]),`, `,A('a',{href:"/reference/state-management"},[`states`]),` and `,A('a',{href:"/reference/components/computed-properties"},[`computed properties`]),`:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`store`]),` `,A('span',{class:"type"},[`Data`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`value`]),` : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`""`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` setValue (`,A('span',{class:"variable"},[`newValue`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`value`]),`: `,A('span',{class:"variable"},[`newValue`]),` }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`You can access its entities with the `,A('code',{},[`.`]),` just like modules:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Data`]),`.`,A('span',{class:"variable"},[`value`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Any component referencing a store (like above) is re-rendered when`,`
`,`data in it changes.`])])}),d=c;export default d;