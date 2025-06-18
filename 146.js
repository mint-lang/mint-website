import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Async Components`]),A('p',{},[`A component can be marked with `,A('code',{},[`async`]),` to make it load asynchronously. Mint`,`
`,`achieves this by compiling that component and everything it uses into a`,`
`,`different file and loading it when the component needs to be rendered.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`async`]),` `,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Greeter`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"Hello World! I'm loaded asynchronously!"`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`shown`]),` : `,A('span',{class:"type"},[`Bool`]),` = `,A('span',{class:"keyword"},[`false`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      <`,A('span',{class:"namespace"},[`button`]),` onclick={() { `,A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`shown`]),`: `,A('span',{class:"keyword"},[`true`]),` } }}>
`]),A('span',{class:"line"},[`        `,A('span',{class:"string"},[`"Show Greeting!"`]),`
`]),A('span',{class:"line"},[`      </`,A('span',{class:"namespace"},[`button`]),`>
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`      `,A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"variable"},[`shown`]),` {
`]),A('span',{class:"line"},[`        <`,A('span',{class:"type"},[`Greeter`]),`/>
`]),A('span',{class:"line"},[`      }
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`In the example above, clicking the button changes the `,A('code',{},[`shown`]),` state and the`,`
`,`component is re-rendered which triggers the loading of the `,A('code',{},[`Greeter`]),`
`,`component which once loaded shows the greeting.`])]),b=a;export default b;