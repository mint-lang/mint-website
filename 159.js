import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Inlining JavaScript`]),A('p',{},[`Since Mint itself compiles to JavaScript, including additional JavaScript`,`
`,`is pretty straightforward. Simply wrap the JavaScript in backticks anywhere`,`
`,`you would write an expression. Mint assumes that the type of the value`,`
`,`returned by this expression matches whatever is needed by the surrounding`,`
`,`Mint code (but see `,A('a',{href:"/reference/javascript/decode"},[`decoding`]),` for a way to safely convert it).`]),A('blockquote',{},[A('p',{},[`Inlining allows you to invoke arbitrary JavaScript code. This can cause`,`
`,`unexpected runtime errors. You can bypass the Mint type system, storing`,`
`,`invalid data in Mint variables, and cause Mint itself to be the source of`,`
`,`the runtime error. Use it with care`,`!`])]),A('p',{},[`Here is an example inlining a call to the JavaScript function`,`
`,A('a',{href:"https://developer.mozilla.org/en-US/docs/Web/API/Window/alert"},[`window.alert`]),`.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` handleClick (`,A('span',{class:"variable"},[`event`]),` : `,A('span',{class:"type"},[`Html.Event`]),`) : `,A('span',{class:"type"},[`Void`]),` {
`]),A('span',{class:"line"},[`    \`window.alert("Hello")\`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),` onClick={`,A('span',{class:"variable"},[`handleClick`]),`}>
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"Click to alert!"`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Inlined JavaScript Statements`]),A('p',{},[`Since in Mint, everything is an expression, the inlined JavaScript code must`,`
`,`also be an expression. If you need to execute multiple JavaScript`,`
`,`statements, wrap the code in a`,`
`,A('a',{href:"https://developer.mozilla.org/en-US/docs/Glossary/IIFE"},[`Immediately Invoked Function Expression`]),`.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`module`]),` `,A('span',{class:"type"},[`Greeter`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` greet (`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`) : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`    \`
`]),A('span',{class:"line"},[`    (() => {
`]),A('span',{class:"line"},[`      const uppercaseName = #{`,A('span',{class:"variable"},[`name`]),`}.toUpperCase()
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`      return "Hello " + uppercaseName + "!"
`]),A('span',{class:"line"},[`    })()
`]),A('span',{class:"line"},[`    \`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('blockquote',{},[A('p',{},[`You should expect your code to be used in a return statement.`])]),A('h2',{},[`Interpolation in inlined JavaScript Statements`]),A('p',{},[`In certain cases you might want access to the Mint scope (so to speak), you`,`
`,`can do that by using the interpolation syntax `,A('code',{},[`#{...}`]),` in inlined`,`
`,`JavaScript. The code inside is evaluated in Mint in the current scope.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`module`]),` `,A('span',{class:"type"},[`Greeter`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` name : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"Me"`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` greet : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`    \`
`]),A('span',{class:"line"},[`    (() => {
`]),A('span',{class:"line"},[`      return "Hello " + #{`,A('span',{class:"variable"},[`name`]),`()} + "!"
`]),A('span',{class:"line"},[`    })()
`]),A('span',{class:"line"},[`    \`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('blockquote',{},[A('p',{},[`Generated interpolation code uses argument names like `,A('code',{},[`i`]),` and `,A('code',{},[`xyz`]),`,`,`
`,`which can cause issues with shadowing or order of operations. To be safe,`,`
`,`prefix your JavaScript variable names with a dollar sign, like `,A('code',{},[`$i`])])]),A('h2',{},[`Specifying the type`]),A('p',{},[`To help the type checker, the type of inlined JavaScript statements can`,`
`,`be defined with the `,A('code',{},[`as`]),` keyword:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`\`"Hello World!"\` `,A('span',{class:"keyword"},[`as`]),` `,A('span',{class:"type"},[`String`])])])])]),b=a;export default b;