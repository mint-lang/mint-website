import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Selectors and Nesting`]),A('p',{},[`Styles can include among other things `,A('a',{href:"https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_selectors"},[`selectors`]),` and `,A('a',{href:"https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule"},[`at-rules`]),`.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`root`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"comment"},[`// A CSS property.`]),`
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`color`]),`: cyan;
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    `,A('span',{class:"comment"},[`// This is a sub rule which uses the descendant selector.`]),`
`]),A('span',{class:"line"},[`    a {
`]),A('span',{class:"line"},[`      `,A('span',{class:"property"},[`color`]),`: blue;
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`      `,A('span',{class:"comment"},[`// This is a nested selector, the ampersand character`]),`
`]),A('span',{class:"line"},[`      `,A('span',{class:"comment"},[`// references the rule it resides in.`]),`
`]),A('span',{class:"line"},[`      &:focus {
`]),A('span',{class:"line"},[`        `,A('span',{class:"property"},[`color`]),`: red;
`]),A('span',{class:"line"},[`      }
`]),A('span',{class:"line"},[`    }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    `,A('span',{class:"comment"},[`// An at-rule for responsive design.`]),`
`]),A('span',{class:"line"},[`    @media (max-width: 600px) {
`]),A('span',{class:"line"},[`      `,A('span',{class:"property"},[`color`]),`: orange;
`]),A('span',{class:"line"},[`    }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`::root>
`]),A('span',{class:"line"},[`      <`,A('span',{class:"namespace"},[`a`]),`>
`]),A('span',{class:"line"},[`        `,A('span',{class:"string"},[`"Hello world!"`]),`
`]),A('span',{class:"line"},[`      </`,A('span',{class:"namespace"},[`a`]),`>
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Nesting`]),A('p',{},[`Selectors, `,A('strong',{},[`@media`]),` and `,A('strong',{},[`@supports`]),` can be nested in each other`,`
`,`infinitely:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`base`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"property"},[`color`]),`: red;
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  div {
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`color`]),`: blue;
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    @supports (display: grid) {
`]),A('span',{class:"line"},[`      `,A('span',{class:"property"},[`display`]),`: grid;
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`      b {
`]),A('span',{class:"line"},[`        `,A('span',{class:"property"},[`font-weight`]),`: normal;
`]),A('span',{class:"line"},[`      }
`]),A('span',{class:"line"},[`    }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    span {
`]),A('span',{class:"line"},[`      `,A('span',{class:"property"},[`color`]),`: yellow;
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`      @media (max-width: 500px) {
`]),A('span',{class:"line"},[`        `,A('span',{class:"property"},[`font-weight`]),`: bold;
`]),A('span',{class:"line"},[`      }
`]),A('span',{class:"line"},[`    }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`At-rules`]),A('p',{},[`The following at-rules are supported currently: `,A('a',{href:"https://developer.mozilla.org/en-US/docs/Web/CSS/@media"},[`@media`]),`, `,A('a',{href:"https://developer.mozilla.org/en-US/docs/Web/CSS/@supports"},[`@supports`]),`,`,`
`,A('a',{href:"https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face"},[`@font-face`]),` and `,A('a',{href:"https://developer.mozilla.org/en-US/docs/Web/CSS/@keyframes"},[`@keyframes`]),`.`]),A('ul',{},[A('li',{},[A('p',{},[A('strong',{},[`@font-face`]),` and `,A('strong',{},[`@keyframes`]),` cannot be nested in sub   selectors,`,`
`,`they can only appear in the style block itself, `,A('strong',{},[`@media`]),` and`,`
`,A('strong',{},[`@supports`]),` can appear in nested selectors as well.`])]),A('li',{},[A('p',{},[A('strong',{},[`@font-face`]),` and `,A('strong',{},[`@keyframes`]),` rules are global, so styles in other`,`
`,`components can use defined entities.`])])])]),b=a;export default b;