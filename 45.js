import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`component Main {
  state value : String = ""

  fun render : Html {
    <div>
      <button onClick={() { next { value: "Hello World!" }}}>
        "Set Value"
      </button>

      <input
        onChange={(event : Html.Event) {
          next { value: Dom.getValue(event.target) }
        }}
        value={value}
        type="text"/>
    </div>
  }
}`,contents:`component Main {
  state value : String = ""

  fun render : Html {
    <div>
      <input
        onChange={(event : Html.Event) {
          next { value: Dom.getValue(event.target) }
        }}
        value={value}
        type="text"/>
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`In Mint, state is managed explicitly (there are no two-way bindings)`,`
`,`using the `,A('code',{},[`state`]),` and `,A('code',{},[`next`]),` keywords.`]),A('p',{},[`The `,A('code',{},[`state`]),` keyword defines a mutable variable in `,A('a',{href:"/reference/components/introduction"},[`components`]),`,`,`
`,A('a',{href:"/reference/stores"},[`stores`]),` or `,A('a',{href:"/reference/providers"},[`providers`]),`.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`value`]),` : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`""`])])])]),A('p',{},[`It consists of the name, type (optional) and default value. To assign a`,`
`,`new value to a state, you need to use the `,A('code',{},[`next`]),` keyword:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`value`]),`: `,A('span',{class:"string"},[`"I was updated!"`]),` }`])])]),A('p',{},[`The update is `,A('strong',{},[`asynchronous`]),`, so you need to `,A('code',{},[`await`]),` (we will learn`,`
`,`more about it in a different lesson) it if you want to use the updated`,`
`,`value afterward.`]),A('p',{},[`As an exercise add a `,A('code',{},[`<button>"Set Value"</button>`]),` before the input`,`
`,`that sets the value to `,A('code',{},[`Hello World!`]),`.`])])}),d=c;export default d;