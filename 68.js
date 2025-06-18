import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`component Main {
  style root {
    font-family: monospace;
    font-weight: bold;
    color: red;
  }

  fun render : Html {
    <div::root>
      "Hello"
    </div>
  }
}`,contents:`component Main {
  style root {
    font-family: monospace;
    font-weight: bold;
    color: red;
  }

  fun render : Html {
    <div>
      "Hello"
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`As we learned before, we can style elements with CSS (inside components)`,`
`,`almost like you would in plain HTML but instead of classes we create`,`
`,A('code',{},[`style`]),` blocks:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`root`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"property"},[`color`]),`: red;
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`To assign that style to an element, you need to use the double colon`,`
`,A('code',{},[`::root`]),` notation after the tag name:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`div`]),`::root></`,A('span',{class:"namespace"},[`div`]),`>`])])]),A('p',{},[`Just for practice assign the `,A('code',{},[`root`]),` style to the `,A('code',{},[`div`]),`.`])])}),d=c;export default d;