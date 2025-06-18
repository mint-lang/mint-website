import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Format Directive`]),A('p',{},[`The `,A('code',{},[`@format`]),` directive returns the formatted string version of the code`,`
`,`it`,`'`,`s given and the result of the code in a tuple `,A('code',{},[`Tuple(a, String)`]),`.`]),A('p',{},[`This is created to make it easy to display the source and the result of an`,`
`,`example Mint code:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` {`,A('span',{class:"variable"},[`result`]),`, `,A('span',{class:"variable"},[`code`]),`} =
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`@format`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"Hello There!"`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`result`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`pre`]),`>
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`code`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`code`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`code`]),`>
`]),A('span',{class:"line"},[`  </`,A('span',{class:"namespace"},[`pre`]),`>
`]),A('span',{class:"line"},[`</`,A('span',{class:"namespace"},[`div`]),`>`])])])]),b=a;export default b;