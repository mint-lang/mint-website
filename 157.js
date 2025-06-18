import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Highlight Directive`]),A('p',{},[`The `,A('code',{},[`@highlight`]),` directive returns the value of the block, and it`,`'`,`s syntax`,`
`,`highlighted version as `,A('code',{},[`Tuple(a, Html)`]),`. It is mainly used to display Mint`,`
`,`source code of examples in documentation.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`let`]),` {`,A('span',{class:"variable"},[`button`]),`, `,A('span',{class:"variable"},[`html`]),`} =
`]),A('span',{class:"line"},[`      `,A('span',{class:"keyword"},[`@highlight`]),` {
`]),A('span',{class:"line"},[`        <`,A('span',{class:"namespace"},[`button`]),`>
`]),A('span',{class:"line"},[`          `,A('span',{class:"string"},[`"Hello World!"`]),`
`]),A('span',{class:"line"},[`        </`,A('span',{class:"namespace"},[`button`]),`>
`]),A('span',{class:"line"},[`      }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    <>
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`button`]),`
`]),A('span',{class:"line"},[`      <`,A('span',{class:"namespace"},[`pre`]),`>
`]),A('span',{class:"line"},[`        <`,A('span',{class:"namespace"},[`code`]),`>`,A('span',{class:"variable"},[`html`]),`</`,A('span',{class:"namespace"},[`code`]),`>
`]),A('span',{class:"line"},[`      </`,A('span',{class:"namespace"},[`pre`]),`>
`]),A('span',{class:"line"},[`    </>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`The example above results in this HTML:`]),A('pre',{},[A('code',{},[A('span',{class:"line"},[`<span class="line">`]),A('span',{class:"line"},[`  <`]),A('span',{class:"line"},[`    <span class="namespace">button</span>`]),A('span',{class:"line"},[`  >`]),A('span',{class:"line"},[`  <span class="string">"Hello World!"</span>`]),A('span',{class:"line"},[`  </`]),A('span',{class:"line"},[`    <span class="namespace">button</span>`]),A('span',{class:"line"},[`  >`]),A('span',{class:"line"},[`</span>`])])])]),b=a;export default b;