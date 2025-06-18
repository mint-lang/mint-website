import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  style root {
    span {
      color: blue;
    }
  }

  fun render : Html {
    <div::root>
      "Hello there..."
      <span>"I'm blue!"</span>
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`Style blocks can include `,A('a',{href:"https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_selectors"},[`selectors`]),` and `,A('a',{href:"https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule"},[`at-rules`]),` besides CSS`,`
`,`definitions.`]),A('p',{},[`If you are familiar with CSS preprocessors llike `,A('a',{href:"https://en.wikipedia.org/wiki/Sass_(style_sheet_language)"},[`Sass`]),` or `,A('a',{href:"https://en.wikipedia.org/wiki/Less_(style_sheet_language)"},[`Less`]),` then`,`
`,`you probably know how they work.`]),A('p',{},[`Basically, instead of writing multiple descendant selectors like this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`root`]),` {
`]),A('span',{class:"line"},[`  article { `,A('span',{class:"property"},[`display`]),`: grid; }
`]),A('span',{class:"line"},[`  article div { `,A('span',{class:"property"},[`color`]),`: red; }
`]),A('span',{class:"line"},[`  article div span { `,A('span',{class:"property"},[`font-size`]),`: 0.75em; }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`You can just nest selectors like this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`root`]),` {
`]),A('span',{class:"line"},[`  article {
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`display`]),`: grid;
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    div {
`]),A('span',{class:"line"},[`      `,A('span',{class:"property"},[`color`]),`: red;
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`      span {
`]),A('span',{class:"line"},[`        `,A('span',{class:"property"},[`font-size`]),`: 0.75em;
`]),A('span',{class:"line"},[`      }
`]),A('span',{class:"line"},[`    }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])])])}),d=c;export default d;