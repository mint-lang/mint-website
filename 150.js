import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Interpolation`]),A('p',{},[`You can use the standard interpolation syntax `,A('code',{},[`#{...}`]),` in property values:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Mint`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`color`]),` : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`"red"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`root`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`color`]),`: #{`,A('span',{class:"variable"},[`color`]),`};
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`::root>
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"Hello"`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`You can use any number of interpolations in a value:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`root`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"property"},[`box-shadow`]),`: #{`,A('span',{class:"variable"},[`x`]),`} #{`,A('span',{class:"variable"},[`y`]),`} #{`,A('span',{class:"variable"},[`blur`]),`} #{`,A('span',{class:"variable"},[`spread`]),`} #{`,A('span',{class:"variable"},[`color`]),`};
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Interpolations will be substituted into the string value of the property, so`,`
`,`the type of the interpolation must be `,A('code',{},[`String`]),` or `,A('code',{},[`Number`]),`.`])]),b=a;export default b;