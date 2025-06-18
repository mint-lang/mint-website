import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('p',{},[`Mint is a type-safe programming language for writing single page`,`
`,`applications. Today, Mint `,A('code',{},[`0.21.0`]),` has been published, so let`,`'`,`s go`,`
`,`over all that`,`'`,`s new.`]),A('p',{},[`In this release we focused on improving debugging and testing and there`,`
`,`are also some nice quality of life changes. In this release `,A('a',{href:"https://github.com/mint-lang/mint/issues?q=sort:updated-desc%20is:issue%20state:closed%20milestone:0.21.0"},[`12 issues`]),`
`,`have been closed (all of them older than a year) by `,A('a',{href:"https://github.com/mint-lang/mint/pulls?q=sort:updated-desc+is:pr+is:closed+milestone:0.21.0"},[`15 pull requests`]),`.`]),A('h2',{},[`Debugging improvements`]),A('p',{},[`The main new feature which helps with debugging is the source map support,`,`
`,`also pretty printing Mint values have landed.`]),A('h3',{},[`Source maps`]),A('p',{},[`For those who don`,`'`,`t know, source maps create a mapping between the`,`
`,`original source code (Mint code) and the generated code (JavaScript).`,`
`,`The browser developer tools can use those mappings among other things`,`
`,`to display the actual source code and allow you to put debugging`,`
`,`breakpoints in it.`]),A('p',{},[``,A(`img`,{"src":`./source-mappings_da16d3ef898aab3bdab364da6724635b.jpg`}),``]),A('p',{},[`The `,A('a',{href:"https://github.com/mint-lang/mint/pull/356"},[`PR`]),` to add source maps to the language was opened more than 3 years`,`
`,`ago, so it was a relief to finally ship it. The refactor of the compiler`,`
`,`made it easier to implement.`]),A('h3',{},[`Pretty Printing Mint Objects`]),A('p',{},[`Before this release when you logged a Mint object - for example`,`
`,A('code',{},[`Maybe.Just("Hello World")`]),` - it would look like this:`]),A('pre',{},[A('code',{},[A('span',{class:"line"},[`Object { length: 1, _0: "Hello World" }`])])]),A('p',{},[`Which is the runtime representation of the value. It made it hard to know`,`
`,`what the type or constructor the object is.`]),A('p',{},[`Now if you log an object using the `,A('code',{},[`dbg`]),` keyword (or the `,A('code',{},[`Debug.inspect`]),`
`,`function) it will pretty print it to the console. The ability to log the`,`
`,`raw value like before can be achieved by adding an exclamation mark at`,`
`,`the end of the keyword `,A('code',{},[`dbg!`])]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`dbg`]),` `,A('span',{class:"type"},[`Maybe`]),`.`,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"string"},[`"Hello World"`]),`)
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// Maybe.Just("Hello World")`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`dbg`]),`! `,A('span',{class:"type"},[`Maybe`]),`.`,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"string"},[`"Hello World"`]),`)
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// Object { length: 1, _0: "Hello World" }`])])])]),A('h2',{},[`Testing improvements`]),A('p',{},[`Global components now are rendered in tests and can be used like usual:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`global`]),` `,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`GlobalTest`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),` class=`,A('span',{class:"string"},[`"global-component"`]),`/>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`suite`]),` `,A('span',{class:"string"},[`"Global Component"`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`test`]),` `,A('span',{class:"string"},[`"It renders on the page"`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Dom`]),`.`,A('span',{class:"variable"},[`getElementBySelector`]),`(`,A('span',{class:"string"},[`".global-component"`]),`) `,A('span',{class:"operator"},[`!=`]),` `,A('span',{class:"type"},[`Maybe`]),`.`,A('span',{class:"type"},[`Nothing`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Also, HTML elements and components can be referenced from tests:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`suite`]),` `,A('span',{class:"string"},[`"Test with HTML reference"`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`test`]),` `,A('span',{class:"string"},[`"it works"`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`button`]),` `,A('span',{class:"keyword"},[`as`]),` `,A('span',{class:"variable"},[`button`]),`/>
`]),A('span',{class:"line"},[`    `,A('span',{class:"operator"},[`|>`]),` `,A('span',{class:"type"},[`Test`]),`.`,A('span',{class:"type"},[`Html`]),`.`,A('span',{class:"variable"},[`start`]),`
`]),A('span',{class:"line"},[`    `,A('span',{class:"operator"},[`|>`]),` `,A('span',{class:"type"},[`Test`]),`.`,A('span',{class:"type"},[`Context`]),`.`,A('span',{class:"variable"},[`map`]),`((`,A('span',{class:"variable"},[`item`]),` : `,A('span',{class:"type"},[`Dom.Element`]),`) { `,A('span',{class:"variable"},[`button`]),` `,A('span',{class:"operator"},[`!=`]),` `,A('span',{class:"type"},[`Maybe`]),`.`,A('span',{class:"type"},[`Nothing`]),` })
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Quality of life changes`]),A('p',{},[`Previously whitespace was a requirement for operators, now that`,`
`,`requirement is lifted:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// These would error out in 0.20.0 but not in 0.21.0`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"number"},[`0`]),A('span',{class:"operator"},[`<`]),A('span',{class:"number"},[`10`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"number"},[`10`]),A('span',{class:"operator"},[`>`]),A('span',{class:"number"},[`0`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"string"},[`"Hello"`]),A('span',{class:"operator"},[`|>`]),A('span',{class:"keyword"},[`dbg`])])])]),A('p',{},[`Comments are now supported inside arrays, tuples and between pipes:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// These would error out in 0.20.0 but not in 0.21.0`]),`
`]),A('span',{class:"line"},[`[
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"Item 1"`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// Comment,`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"Item 2"`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// Comment`]),`
`]),A('span',{class:"line"},[`]
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`{
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"Item 1"`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// Comment,`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"Item 2"`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// Comment`]),`
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"string"},[`"Item 1"`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// Comment`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"operator"},[`|>`]),` `,A('span',{class:"keyword"},[`dbg`])])])]),A('p',{},[`It is now possible to reference assets from the root of the project (`,`
`,`where the `,A('code',{},[`mint.json`]),` is located):`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// The usual relative from the source file (source/Main.mint).`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`@asset`]),`(../assets/image.jpg)
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// Now it is possible to reference it from the root (anywhere else).`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`@asset`]),`(/assets/image.jpg)`])])]),A('p',{},[`These changes will make it easier to quickly iterate over the code.`]),A('hr',{},[]),A('p',{},[`These were just the highlights of the release, make sure to read the full`,`
`,A('a',{href:"https://github.com/mint-lang/mint/releases/tag/0.21.0"},[`release notes`]),`.`])]);export default a;