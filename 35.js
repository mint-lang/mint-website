import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : Html {
    // This is a block
    {
      let name =
        "Joe"

      <div>"Hello #{name}!"</div>
    }
  }
}`})],contents:A(B,{},[A('p',{},[`In some of the previous chapters, there were `,A('code',{},[`let`]),` statements (which we`,`
`,`cover later on). These statements appear in `,A('strong',{},[`blocks`]),`.`]),A('p',{},[`A `,A('strong',{},[`block`]),` is just a number of statements enclosed by brackets `,A('code',{},[`{...}`]),`
`,`used in many places (function body, branches of `,A('code',{},[`if`]),` expressions, etc...),`,`
`,`but they can be used as a `,A('strong',{},[`standalone expression`]),` as well:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`{
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`name`]),` = `,A('span',{class:"string"},[`"Joe"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// More statements...`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Statements in a block are evaluated sequentially from top to bottom, and`,`
`,`the value from the last statement is returned.`])])}),d=c;export default d;