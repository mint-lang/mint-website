import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Styling`]),A('p',{},[`CSS is used to style HTML elements with some differences, mainly that they`,`
`,`are more dynamic. We support nested selectors, `,A('a',{href:"/reference/styling/control-flow"},[`control flow`]),` (with `,A('a',{href:"/reference/control-flow/if"},[`if`,`
`,`expressions`]),` and `,A('a',{href:"/reference/control-flow/case"},[`case expressions`]),`), `,A('a',{href:"/reference/styling/interpolation"},[`interpolation`]),` and `,A('a',{href:"/reference/styling/arguments"},[`arguments`]),` (like`,`
`,`in a function).`]),A('p',{},[`Styles are bound to components and can`,`'`,`t exist anywhere else. This limits`,`
`,`their scope to the component itself and makes them more manageable. Styles`,`
`,`are defined using a `,A('strong',{},[`style block`]),` with a named identifier (alphanumeric`,`
`,`characters and dash `,A('code',{},[`-`]),`):`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`root`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`font-family`]),`: sans;
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`font-weight`]),`: bold;
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`color`]),`: red;
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`::root>
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"Hello"`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`As you can see in the example, styles are applied to an element using the`,`
`,`double colon syntax `,A('code',{},[`::root`]),` after the tag name. We use this instead of`,`
`,`the `,A('code',{},[`class`]),` attribute to support the traditional way of styling as well.`]),A('p',{},[`With this syntax, you can apply multiple styles to an element:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`style-a`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`color`]),`: red;
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`style-b`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`background`]),`: blue;
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`::style-a::style-b>
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"Hello"`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])])]),b=a;export default b;