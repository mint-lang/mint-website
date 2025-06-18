import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Arguments`]),A('p',{},[`A style block can take many arguments, just like a function can:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`root`]),` (`,A('span',{class:"variable"},[`color`]),` : `,A('span',{class:"type"},[`String`]),`) {
`]),A('span',{class:"line"},[`  `,A('span',{class:"property"},[`color`]),`: #{`,A('span',{class:"variable"},[`color`]),`};
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`The arguments are passed like it would to a function:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`div`]),`::root(`,A('span',{class:"string"},[`"red"`]),`)>
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"I am red!"`]),`
`]),A('span',{class:"line"},[`</`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`div`]),`::root(`,A('span',{class:"string"},[`"blue"`]),`)>
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"I am blue!"`]),`
`]),A('span',{class:"line"},[`</`,A('span',{class:"namespace"},[`div`]),`>`])])]),A('p',{},[`The arguments work exactly like they do on `,A('a',{href:"/reference/functions"},[`functions`]),`, so default arguments`,`
`,`and named arguments are supported.`])]),b=a;export default b;