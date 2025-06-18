import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`component Main {
  state color : String = "red"

  style root {
    color: #{color};
  }

  fun render : Html {
    <div::root onClick={() { next { color: "blue" }}}>
      "Hello world!I'm #{color}!"
    </div>
  }
}`,contents:`component Main {
  state color : String = "red"

  style root {
    color: black;
  }

  fun render : Html {
    <div::root onClick={() { next { color: "blue" }}}>
      "Hello world!I'm #{color}!"
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`It would be limiting if you could only style elements with static`,`
`,`values, but fortunately you can use dynamic values using the standard`,`
`,`interpolation syntax `,A('code',{},[`#{...}`])]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`root`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"property"},[`color`]),`: #{`,A('span',{class:"variable"},[`color`]),`};
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`In the case above, if the `,A('code',{},[`color`]),` entity changes it will reflect in the`,`
`,`color of the element.`]),A('p',{},[`You can have many interpolations in a value:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`root`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"property"},[`box-shadow`]),`: #{`,A('span',{class:"variable"},[`x`]),`} #{`,A('span',{class:"variable"},[`y`]),`} #{`,A('span',{class:"variable"},[`blur`]),`} #{`,A('span',{class:"variable"},[`spread`]),`} #{`,A('span',{class:"variable"},[`color`]),`};
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`As an exercise, use interpolation to color the element.`])])}),d=c;export default d;