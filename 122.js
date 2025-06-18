import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Blocks`]),A('p',{},[`Blocks are one or more expressions grouped together with curly braces. Each`,`
`,`expression is evaluated in order and the value of the last expression is`,`
`,`returned. Any variables assigned within the block can only be used within`,`
`,`the block.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`{
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`name`]),` = `,A('span',{class:"string"},[`"Joe"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"Hello`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`There are some entities where their bodies are blocks: `,A('a',{href:"/reference/html#attributes"},[`html attributes`]),`,`,`
`,A('a',{href:"/reference/control-flow/for"},[`for expressions`]),`, `,A('a',{href:"/reference/functions"},[`functions`]),`, `,A('a',{href:"/reference/components/computed-properties"},[`computed properties`]),`, `,A('a',{href:"/reference/testing"},[`tests`]),`, `,A('a',{href:"/reference/routes"},[`routes`]),`,`,`
`,A('a',{href:"/reference/control-flow/if"},[`if expressions`]),`, `,A('a',{href:"/reference/directives/highlight"},[`highlight directives`]),` and `,A('a',{href:"/reference/directives/format"},[`format directives`]),`.`]),A('h2',{},[`Early Return`]),A('p',{},[`You can return early from a `,A('code',{},[`let`]),` destruction:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`{
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`whatsThis`]),` =
`]),A('span',{class:"line"},[`    (`,A('span',{class:"variable"},[`maybe`]),` : `,A('span',{class:"type"},[`Maybe`]),`(`,A('span',{class:"type"},[`String`]),`)) {
`]),A('span',{class:"line"},[`      `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"type"},[`Maybe`]),A('span',{class:"type"},[`.Just`]),`(`,A('span',{class:"variable"},[`value`]),`) = `,A('span',{class:"variable"},[`maybe`]),` `,A('span',{class:"keyword"},[`or`]),` `,A('span',{class:"keyword"},[`return`]),` `,A('span',{class:"string"},[`"It's nothing!"`]),A('span',{class:"string"},[`"It's nothing!"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"It's a`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`value`]),A('span',{class:"string"},[`}!"`]),`
`]),A('span',{class:"line"},[`    }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`whatsThis`]),`(`,A('span',{class:"type"},[`Maybe`]),`.`,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"string"},[`"cat"`]),`)) `,A('span',{class:"comment"},[`// It's a cat!`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`whatsThis`]),`(`,A('span',{class:"type"},[`Maybe`]),`.`,A('span',{class:"type"},[`Nothing`]),`)     `,A('span',{class:"comment"},[`// It's nothing!`]),`
`]),A('span',{class:"line"},[`}`])])])]),b=a;export default b;