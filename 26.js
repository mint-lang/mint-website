import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : Html {
    <pre>
      "\\u{1F469}\\u{200D}\\u{1F4BB} こんにちは Mint \\u{1F343}\\n"
      "\\u{1F600}\\n"
      "\\"X\\" marks the spot\\n"
      "Hello" + " World" + "!\\n"
      String.reverse("1 2 3 4 5")
    </pre>
  }
}`})],contents:A(B,{},[A('p',{},[`A `,A('code',{},[`String`]),` represents a sequence of characters, they are created with`,`
`,`string literals using quotes `,A('code',{},[`""`]),`:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"string"},[`"A single line string!"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"string"},[`"A multline line string`])]),A('span',{class:"line"},[A('span',{class:"string"},[`An other line"`])])])]),A('p',{},[`Strings can be broken apart with the `,A('code',{},[`\\`]),` operator:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"string"},[`"First line" \\`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"string"},[`"Second line" \\`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"string"},[`"Third line"`]),` `,A('span',{class:"operator"},[`==`]),` `,A('span',{class:"string"},[`"First lineSecond lineThird line"`])])])]),A('p',{},[`Strings can be concatenated with the `,A('code',{},[`+`]),` operator:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`(`,A('span',{class:"string"},[`"Hello"`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"string"},[`" World"`]),` `,A('span',{class:"operator"},[`+`]),` `,A('span',{class:"string"},[`"!"`]),`) `,A('span',{class:"operator"},[`==`]),` `,A('span',{class:"string"},[`"Hello World!"`])])])]),A('p',{},[`Other values can be interpolated into strings using interpolation:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`name`]),` =
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"World"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"string"},[`"Hello`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}!"`]),` `,A('span',{class:"operator"},[`==`]),` `,A('span',{class:"string"},[`"Hello World!"`])])])]),A('p',{},[`Since Mint is a strongly typed language, you can only interpolate other`,`
`,A('code',{},[`String`]),` or `,A('code',{},[`Number`]),` typed values (numbers are implicitly converted to`,`
`,`string). If you try to use something else, you will get a nice error`,`
`,`message.`])])}),d=c;export default d;