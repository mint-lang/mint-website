import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun handleClick (event : Html.Event) : Void {
    \`window.alert("Hello World!")\`
  }

  fun render : Html {
    <div onClick={handleClick}>
      "Click to alert!"
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`Since the code compiles to JavaScript, you need to interface with it`,`
`,`from time to time. Mint has a simple feature for that: `,A('strong',{},[`inlining`]),`.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`\`window.alert("Hello World!")\``])])]),A('p',{},[`Everything between backticks is written to the compiled JavaScript code,`,`
`,`so it`,`'`,`s basically inlined into the output.`]),A('p',{},[`You can put Mint variables (or code) into inlined code with`,`
`,`interpolations:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`\`window.alert(#{`,A('span',{class:"type"},[`String`]),`.`,A('span',{class:"variable"},[`toUpperCase`]),`(`,A('span',{class:"string"},[`"Hello World!"`]),`)})\``])])]),A('p',{},[`By default, the type of inlinings is `,A('code',{},[`a`]),` which means it will match`,`
`,`anything. If you want to define its return type, you can do that with`,`
`,`the `,A('code',{},[`as`]),` keyword:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`\`new Date()\` `,A('span',{class:"keyword"},[`as`]),` `,A('span',{class:"type"},[`Time`])])])]),A('blockquote',{},[A('p',{},[`The compiler cannot enforce the given type, it`,`'`,`s just for`,`
`,`informational purposes for the compiler and reader.`])])])}),d=c;export default d;