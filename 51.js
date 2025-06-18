import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  const TEXT =
    defer <<~PLAIN
    This was loaded on demand!
    PLAIN

  const DEFERRED_ALERT =
    defer (value : String) { Window.alert(value) }

  fun render : Html {
    <ol>
      <li>"Open the developer tools tab"</li>
      <li>"Open the network tab"</li>
      <li>
        "Click the button to load the deferred things."
        <br/>
        <button onClick={() {
          let alert = await DEFERRED_ALERT
          let text = await TEXT

          alert(text)
        }}>
          "Load deferred things."
        </button>
      </li>
      <li>"You should see 1.js and 2.js loaded."</li>
      <li>"You can check the files if you like :)"</li>
    </ol>
  }
}`})],contents:A(B,{},[A('p',{},[`There are some scenarios when you don`,`'`,`t want to load a piece of code`,`
`,`up-front. Mint has a built-in feature for this with the `,A('code',{},[`defer`]),` keyword.`]),A('p',{},[`The expression after the `,A('code',{},[`defer`]),` keyword will be bundled into a`,`
`,`different file, which can be loaded later on with the `,A('code',{},[`await`]),` keyword:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`deferred`]),` =
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`defer`]),` `,A('span',{class:"string"},[`"Hello, I'm compiled into a different file!"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`string`]),` =
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`await`]),` `,A('span',{class:"variable"},[`deferred`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Debug`]),`.`,A('span',{class:"variable"},[`log`]),`(`,A('span',{class:"variable"},[`string`]),`)`])])]),A('p',{},[`The deferred things are actually separated at compile time so they`,`
`,`don`,`'`,`t have any runtime cost. To learn more about it, check out its`,`
`,A('a',{href:"/reference/control-flow/defer"},[`reference`]),`.`]),A('p',{},[`Check the example on the right to see how it works`,`!`])])}),d=c;export default d;