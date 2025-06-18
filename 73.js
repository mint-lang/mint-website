import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  style root {
    svg {
      fill: red;
    }
  }

  fun render : Html {
    <div::root>
      @svg(circle.svg)
    </div>
  }
}`}),b({path:`circle.svg`,solution:``,contents:`<svg
  xmlns="http://www.w3.org/2000/svg"
  viewBox="0 0 100 100"
  height="100"
  width="100">
  <circle cx="50" cy="50" r="50" />
</svg>`})],contents:A(B,{},[A('p',{},[`The `,A('code',{},[`@svg`]),` directive allows you to inline an SVG file as `,A('code',{},[`Html`]),`. This`,`
`,`is useful for many reasons, for example if you don`,`'`,`t want to make extra`,`
`,`HTTP requests to display an SVG or if you want to style the SVG with`,`
`,`CSS.`]),A('p',{},[`The referenced file is `,A('strong',{},[`relative to the file the directive is defined`,`
`,`in`]),` or `,A('strong',{},[`relative to the root of the project`]),`.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// Main.mint`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`@svg`]),`(icon.svg)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`In the example above, the `,A('code',{},[`icon.svg`]),` is in the same directory as the`,`
`,A('code',{},[`Main.mint`]),` file.`]),A('hr',{},[]),A('p',{},[`For more information, check out the `,A('a',{href:"/reference/directives/svg"},[`reference page`]),`.`])])}),d=c;export default d;