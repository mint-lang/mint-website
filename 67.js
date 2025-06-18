import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`store Counter {
  state count : Number = 0

  fun setCount (count : Number) : Promise(Void) {
    next { count: count }
  }
}

component Main {
  connect Counter exposing { count, setCount }

  fun handleClick (event : Html.Event) : Promise(Void) {
    setCount(count + 1)
  }

  fun handleContextMenu (event : Html.Event) : Promise(Void) {
    Html.Event.preventDefault(event)
    setCount(0)
  }

  fun render : Html {
    <div
      onContextMenu={handleContextMenu}
      onClick={handleClick}>

      "Count: " + Number.toString(count)

    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`Components can connect to stores in order to subscribe to changes of`,`
`,`their data and reference their states and functions.`]),A('p',{},[`In the example on the right, you can see a variation of the counter`,`
`,`example where the data is stored in a store.`]),A('p',{},[`The `,A('code',{},[`Main`]),` component connects to the `,A('code',{},[`Counter`]),` store with the `,A('code',{},[`connect`]),`
`,`keyword, followed by what entities to expose from it.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`connect`]),` `,A('span',{class:"type"},[`Counter`]),` `,A('span',{class:"keyword"},[`exposing`]),` { count, setCount }`])])])])}),d=c;export default d;