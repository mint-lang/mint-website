import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : Html {
    <pre>
      String.join([
        Bool.toString(true && false),
        Bool.toString(true && true),
        Bool.toString(false || false),
        Bool.toString(false || true),
        Number.toString(3.14),
        Number.toString(42),
        Number.toString(-10),
        Regexp.toString(/foo|bar/),
        Regexp.toString(/h(e+)llo/)
      ], "\\n")
    </pre>
  }
}`})],contents:A(B,{},[A('p',{},[`The usual literal types like on other programming languages are`,`
`,`available in Mint as well (strings are in the next chapter).`]),A('h3',{},[`Boolean`]),A('p',{},[`Represents the `,A('code',{},[`Boolean`]),` type. It has two possible values `,A('code',{},[`true`]),` and`,`
`,A('code',{},[`false`]),`.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`false`]),` `,A('span',{class:"comment"},[`// A Bool that is false`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`true`]),`  `,A('span',{class:"comment"},[`// A Bool that is true`])])])]),A('h3',{},[`Number`]),A('p',{},[`Represents a `,A('code',{},[`Number`]),`. In Mint, all numbers are floats.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"number"},[`3.14`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"number"},[`42`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"operator"},[`-`]),A('span',{class:"number"},[`10`])])])]),A('h3',{},[`Regexp`]),A('p',{},[`Regular expressions are represented by the `,A('code',{},[`Regexp`]),` type.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"regexp"},[`/foo|bar/`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"operator"},[`/`]),A('span',{class:"variable"},[`h`]),`(e+)llo/
`]),A('span',{class:"line"},[`/\\d+/
`]),A('span',{class:"line"},[`/あ/`])])])])}),d=c;export default d;