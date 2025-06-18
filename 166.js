import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`0.19.0 ⇢ 0.20.0`]),A('p',{},[`This guide will walk you through the migration from `,A('code',{},[`0.19.0`]),` to `,A('code',{},[`0.20.0`]),`.`,`
`,`There are many changes in `,A('code',{},[`0.20.0`]),` but your project should compile without`,`
`,`major code modifications since most of the changes are deprecations.`]),A('h2',{},[`⚠ Breaking Changes ⚠`]),A('p',{},[`The `,A('code',{},[`external`]),` field was removed from the `,A('code',{},[`mint.json`]),` file. The reason for`,`
`,`the removal is that use of them in packages made the order of all external`,`
`,`files ambigous.`]),A('h3',{},[`External Stylesheets`]),A('p',{},[`There are two ways to migrate external stylesheets.`]),A('ol',{},[A('li',{},[A('p',{},[`Put the files from `,A('code',{},[`external.stylesheets`]),` to the `,A('code',{},[`public`]),` directory,`,`
`,`then include them in `,A('code',{},[`head.html`]),`:`]),A('pre',{},[A('code',{class:"language-html"},[A('span',{class:"line"},[`<link type="text/css" rel="stylesheet" href="styles.css"/>`])])])]),A('li',{},[A('p',{},[`Use the `,A('code',{},[`AssetsLoader`]),` module to load the asset programatically:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`await`]),` `,A('span',{class:"type"},[`AssetLoader`]),`.`,A('span',{class:"variable"},[`loadStylesheet`]),`(`,A('span',{class:"keyword"},[`@asset`]),`(../assets/styles.css))`])])])])]),A('h3',{},[`External JavaScripts`]),A('p',{},[`There are two ways to migrate external JavaScripts.`]),A('ol',{},[A('li',{},[A('p',{},[`Put the files from `,A('code',{},[`external.javascripts`]),` to the `,A('code',{},[`public`]),` directory,`,`
`,`then include them in `,A('code',{},[`head.html`]),`:`]),A('pre',{},[A('code',{class:"language-html"},[A('span',{class:"line"},[`<script type="text/javascript" src="library.js"/>`])])])]),A('li',{},[A('p',{},[`Use the `,A('code',{},[`AssetsLoader`]),` module to load the asset programatically:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`await`]),` `,A('span',{class:"type"},[`AssetLoader`]),`.`,A('span',{class:"variable"},[`loadJavaScript`]),`(`,A('span',{class:"keyword"},[`@asset`]),`(../assets/library.js))`])])])])]),A('h2',{},[`Deprecations`]),A('p',{},[`A number of syntax feature are being deprecated, they will still be valid`,`
`,`in `,A('code',{},[`0.20.0`]),` but will be removed in `,A('code',{},[`0.21.0`]),`.`]),A('ul',{},[A('li',{},[A('p',{},[`Constant access is now using the dot `,A('code',{},[`.`]),` instead of the colon `,A('code',{},[`:`])]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// 0.19.0, 0.20.0`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Module`]),`:`,A('span',{class:"type"},[`CONSTANT`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// 0.20.0, 0.21.0`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Module`]),`.`,A('span',{class:"type"},[`CONSTANT`])])])])]),A('li',{},[A('p',{},[`Enums are now using the dot `,A('code',{},[`.`]),` instead of the double colon `,A('code',{},[`::`])]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// 0.19.0, 0.20.0`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Maybe`]),`::`,A('span',{class:"type"},[`Just`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// 0.20.0, 0.21.0`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Maybe`]),`.`,A('span',{class:"type"},[`Just`])])])])]),A('li',{},[A('p',{},[A('code',{},[`enum`]),` and `,A('code',{},[`record`]),` is now `,A('code',{},[`type`])]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// 0.19.0, 0.20.0`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`enum`]),` `,A('span',{class:"type"},[`Maybe`]),`(`,A('span',{class:"type_parameter"},[`a`]),`) {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Nothing`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"type_parameter"},[`a`]),`)
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`record`]),` `,A('span',{class:"type"},[`User`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`age`]),` : `,A('span',{class:"type"},[`Number`]),`
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// 0.20.0, 0.21.0`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`type`]),` `,A('span',{class:"type"},[`Maybe`]),`(`,A('span',{class:"type_parameter"},[`a`]),`) {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Nothing`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"type_parameter"},[`a`]),`)
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`type`]),` `,A('span',{class:"type"},[`User`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`age`]),` : `,A('span',{class:"type"},[`Number`]),`
`]),A('span',{class:"line"},[`}`])])])]),A('li',{},[A('p',{},[`Html expressions `,A('code',{},[`<{...}>`]),` will be removed`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// 0.19.0, 0.20.0`]),`
`]),A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  <{ `,A('span',{class:"variable"},[`children`]),` }>
`]),A('span',{class:"line"},[`</`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// 0.20.0, 0.21.0`]),`
`]),A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`children`]),`
`]),A('span',{class:"line"},[`</`,A('span',{class:"namespace"},[`div`]),`>`])])])])]),A('h2',{},[`Changes`]),A('p',{},[`It is possible now to omit the type name in and destructurings:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// 0.19.0`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`case`]),` `,A('span',{class:"type"},[`Maybe`]),`::`,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"string"},[`"a"`]),`) {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Maybe`]),`::`,A('span',{class:"type"},[`Nothing`]),` => `,A('span',{class:"string"},[`""`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Maybe`]),`::`,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"variable"},[`a`]),`) => `,A('span',{class:"variable"},[`a`]),`
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// 0.20.0`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`case`]),` `,A('span',{class:"type"},[`Maybe`]),`.`,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"string"},[`"a"`]),`) {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Nothing`]),` => `,A('span',{class:"string"},[`""`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"variable"},[`a`]),`) => `,A('span',{class:"variable"},[`a`]),`
`]),A('span',{class:"line"},[`}`])])])]),b=a;export default b;