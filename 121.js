import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Routes`]),A('p',{},[`In Mint, each route of an application is defined at the top level with the`,`
`,A('code',{},[`routes`]),` block. Here is an example of an application where you can list`,`
`,`users on one route and show a single user on another:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`routes`]),` {
`]),A('span',{class:"line"},[`  / {
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Application`]),`.`,A('span',{class:"variable"},[`setPage`]),`(`,A('span',{class:"string"},[`"index"`]),`)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  /users/:id (`,A('span',{class:"variable"},[`id`]),`: `,A('span',{class:"type"},[`Number`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Application`]),`.`,A('span',{class:"variable"},[`setPage`]),`(`,A('span',{class:"string"},[`"show"`]),`)
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Application`]),`.`,A('span',{class:"variable"},[`loadUser`]),`(`,A('span',{class:"variable"},[`id`]),`)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Keep in mind that routes are matched in the order they are defined from`,`
`,A('strong',{},[`top to bottom`]),`, and they are used to set state, not render things.`]),A('h2',{},[`Matching parameters`]),A('p',{},[`You can match parts of the path as parameters. Parameters are typed checked`,`
`,`and if it can`,`'`,`t convert the `,A('code',{},[`String`]),` into the desired type it means that`,`
`,`the route will not be matched.`]),A('p',{},[`Here is the syntax for matching things:`]),A('ul',{},[A('li',{},[A('p',{},[A('code',{},[`:name`]),` - a parameter to capture from the path up to `,A('code',{},[`/`]),`, `,A('code',{},[`?`]),`, `,A('code',{},[`#`]),`, or`,`
`,`end of string`])]),A('li',{},[A('p',{},[A('code',{},[`*splat`]),` - a splat to capture from the path up to `,A('code',{},[`?`]),`, `,A('code',{},[`#`]),`, or end of`,`
`,`string`])]),A('li',{},[A('p',{},[A('code',{},[`()`]),` - Optional group that doesn`,`'`,`t have to be part of the query. Can`,`
`,`contain nested optional groups, parameters, and splats anything else`])]),A('li',{},[A('p',{},[`free form literals`])])]),A('p',{},[`This is an example of matching blog posts:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`routes`]),` {
`]),A('span',{class:"line"},[`  /blog {
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Application`]),`.`,A('span',{class:"variable"},[`setPage`]),`(`,A('span',{class:"string"},[`"blog"`]),`)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  /blog/:slug (`,A('span',{class:"variable"},[`slug`]),`: `,A('span',{class:"type"},[`String`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Application`]),`.`,A('span',{class:"variable"},[`setPage`]),`(`,A('span',{class:"string"},[`"post"`]),`)
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Application`]),`.`,A('span',{class:"variable"},[`loadPost`]),`(`,A('span',{class:"variable"},[`slug`]),`)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Matching everything`]),A('p',{},[`You can use the `,A('code',{},[`*`]),` to match every not matched route. The position of this`,`
`,`route does not matter, it will be matched after every other route.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`routes`]),` {
`]),A('span',{class:"line"},[`  / {
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Application`]),`.`,A('span',{class:"variable"},[`setPage`]),`(`,A('span',{class:"string"},[`"index"`]),`)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  * {
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Application`]),`.`,A('span',{class:"variable"},[`setPage`]),`(`,A('span',{class:"string"},[`"not_found"`]),`)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Awaiting`]),A('p',{},[`In content pages (like documentation) you want to jump to the target anchor`,`
`,`(from the hash of the location) and Mint honors that under normal`,`
`,`circumstances, but when content is loaded asynchronously you need to tell`,`
`,`the runtime to wait for it.`]),A('p',{},[`You can do that by adding the `,A('code',{},[`await`]),` keyword at the end of the route (`,`
`,`before the block):`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`module`]),` `,A('span',{class:"type"},[`Content`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`const`]),` `,A('span',{class:"type"},[`INSTALL`]),` =
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`defer`]),` <>
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"This is the istall page:"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`      <`,A('span',{class:"namespace"},[`a`]),` name=`,A('span',{class:"string"},[`"anchor"`]),` style=`,A('span',{class:"string"},[`"margin-top: 1000px;"`]),`>
`]),A('span',{class:"line"},[`        `,A('span',{class:"string"},[`"I'm waaaaaay down."`]),`
`]),A('span',{class:"line"},[`      </`,A('span',{class:"namespace"},[`a`]),`>
`]),A('span',{class:"line"},[`    </>
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`routes`]),` {
`]),A('span',{class:"line"},[`  /install `,A('span',{class:"keyword"},[`await`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`content`]),` =
`]),A('span',{class:"line"},[`      `,A('span',{class:"keyword"},[`await`]),` `,A('span',{class:"type"},[`Content`]),`.`,A('span',{class:"type"},[`INSTALL`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Application`]),`.`,A('span',{class:"variable"},[`setContent`]),`(`,A('span',{class:"variable"},[`content`]),`)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Without the `,A('code',{},[`await`]),`, navigating to `,A('code',{},[`/install#anchor`]),` the page would be`,`
`,`scrolled to the top (because the anchor is not there), but with `,A('code',{},[`await`]),`
`,`it will wait for the content to be displayed, and the page will be scrolled`,`
`,`to the anchor.`])]),b=a;export default b;