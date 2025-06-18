import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Html`]),A('p',{},[`Mint has built-in syntax for create `,A('a',{href:"https://en.wikipedia.org/wiki/Virtual_DOM"},[`Virtual DOM`]),`
`,`Nodes with a HTML like syntax.`]),A('h2',{},[`Tags`]),A('p',{},[`Tags work a lot like HTML tags, with the difference that self-closing tags`,`
`,`have the slash `,A('code',{},[`/`]),` after the tag name and not before.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`div`]),`>`,A('span',{class:"string"},[`"Hello There"`]),`</`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`br`]),`/> `,A('span',{class:"comment"},[`// Instead of </br>`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`select`]),`>
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`option`]),`>`,A('span',{class:"string"},[`"Option 1"`]),`</`,A('span',{class:"namespace"},[`option`]),`>
`]),A('span',{class:"line"},[`</`,A('span',{class:"namespace"},[`select`]),`>`])])]),A('h2',{},[`Attributes`]),A('p',{},[`In addition to the string attribute, Mint supports other ways to pass values`,`
`,`to attributes (depending on the type):`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`div`]),` class=`,A('span',{class:"string"},[`"container"`]),`></`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`<`,A('span',{class:"type"},[`MyComponent`]),`
`]),A('span',{class:"line"},[`  expression={`,A('span',{class:"variable"},[`anyVariableOrValue`]),`}
`]),A('span',{class:"line"},[`  array=[`,A('span',{class:"string"},[`"Item1"`]),`, `,A('span',{class:"string"},[`"Item2"`]),`]
`]),A('span',{class:"line"},[`  html=<>`,A('span',{class:"string"},[`"Hello World!"`]),`</>
`]),A('span',{class:"line"},[`  string=`,A('span',{class:"string"},[`"Hello World!"`]),`
`]),A('span',{class:"line"},[`/>`])])]),A('p',{},[`The following uses are `,A('strong',{},[`not supported`]),`:`]),A('ul',{},[A('li',{},[`Unquoted attributes `,A('code',{},[`type=checkbox`])]),A('li',{},[`Naked attributes `,A('code',{},[`disabled`])])]),A('h2',{},[`Children`]),A('p',{},[`Any tag or component can have child items. Unlike in HTML where the contents`,`
`,`are only text or other tags, in Mint child items can be `,A('strong',{},[`expressions`]),`,`,`
`,`but they must evaluate to `,A('code',{},[`Html`]),`, `,A('code',{},[`String`]),`, `,A('code',{},[`Number`]),` or an array of those.`]),A('p',{},[`Here are some examples:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// A variable containing Html (Html)`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`htmlVariable`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// A normal string (String)`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"String Value"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// A number`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"number"},[`42`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// An array of strings (Array(String))`]),`
`]),A('span',{class:"line"},[`  [`,A('span',{class:"string"},[`"Item 1"`]),`, `,A('span',{class:"string"},[`"Item 2"`]),`]
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// Or an expression... (String)`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"keyword"},[`true`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"True"`]),`
`]),A('span',{class:"line"},[`  } `,A('span',{class:"keyword"},[`else`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"false"`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// Which includes other Html tags (Html)`]),`
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`span`]),`>`,A('span',{class:"string"},[`"I'm a span!"`]),`</`,A('span',{class:"namespace"},[`span`]),`>
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// Or a block (String)`]),`
`]),A('span',{class:"line"},[`  {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`name`]),` = `,A('span',{class:"string"},[`"Joe"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"Hello`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}!"`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`</`,A('span',{class:"namespace"},[`div`]),`>`])])]),A('h3',{},[`Whitespace`]),A('p',{},[`It`,`'`,`s important to know that `,A('strong',{},[`you control the whitespace`]),` between and`,`
`,`around of elements. For example this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"Hello"`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"World!"`]),`
`]),A('span',{class:"line"},[`</`,A('span',{class:"namespace"},[`div`]),`>`])])]),A('p',{},[`Will render as `,A('code',{},[`<div>HelloWorld!</div>`]),` without any whitespace. To fix it,`,`
`,`you need to add a space in either the end of the first string or the start`,`
`,`of the second string:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"Hello "`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"World!"`]),`
`]),A('span',{class:"line"},[`</`,A('span',{class:"namespace"},[`div`]),`>`])])]),A('h2',{},[`Fragments`]),A('p',{},[`If you need to group together some content, but you don`,`'`,`t want to use an`,`
`,`element, then you can use a `,A('strong',{},[`fragment`]),` (will be the type `,A('code',{},[`Html`]),`):`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<>
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`span`]),`>`,A('span',{class:"string"},[`"I'm a span!"`]),`</`,A('span',{class:"namespace"},[`span`]),`>
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`strong`]),`>`,A('span',{class:"string"},[`"I'm bold!"`]),`</`,A('span',{class:"namespace"},[`strong`]),`>
`]),A('span',{class:"line"},[`</>`])])]),A('p',{},[`or alternatively an array of elements (will be the type `,A('code',{},[`Array(Html)`]),`):`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`[
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`span`]),`>`,A('span',{class:"string"},[`"I'm a span!"`]),`</`,A('span',{class:"namespace"},[`span`]),`>,
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`strong`]),`>`,A('span',{class:"string"},[`"I'm bold!"`]),`</`,A('span',{class:"namespace"},[`strong`]),`>
`]),A('span',{class:"line"},[`]`])])])]),b=a;export default b;