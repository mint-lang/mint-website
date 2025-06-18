import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : Html {
    let {result, code} =
      @format {
        <div>"Hello There!"</div>
      }

    <div>
      result

      <pre>
        <code>code</code>
      </pre>
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`The `,A('code',{},[`@format`]),` directive returns the formatted string version of the`,`
`,`code it`,`'`,`s given and the result of the code in a tuple (`,A('code',{},[`Tuple(a, String)`]),`).`]),A('p',{},[`This was created to make it easy to display the source and the result`,`
`,`of an example Mint code.`]),A('hr',{},[]),A('p',{},[`For more information, check out the `,A('a',{href:"/reference/directives/format"},[`reference page`]),`.`])])}),d=c;export default d;