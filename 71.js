import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  style root {
    animation: animate infinite 1s;

    /* An at-rule for responsive design. */
    @media (max-width: 1000px) {
      color: orange;
    }

    @keyframes animate {
      from { opacity: 0; }
      to { opacity: 1; }
    }
  }

  fun render : Html {
    <div::root>
      "Hello world!"
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`You can write some of the `,A('a',{href:"https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule"},[`at-rules`]),` in style block: `,A('a',{href:"https://developer.mozilla.org/en-US/docs/Web/CSS/@media"},[`@media`]),`,`,`
`,A('a',{href:"https://developer.mozilla.org/en-US/docs/Web/CSS/@supports"},[`@supports`]),`, `,A('a',{href:"https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face"},[`@font-face`]),` and `,A('a',{href:"https://developer.mozilla.org/en-US/docs/Web/CSS/@keyframes"},[`@keyframes`]),`.`]),A('ul',{},[A('li',{},[A('p',{},[A('strong',{},[`@font-face`]),` and `,A('strong',{},[`@keyframes`]),` cannot be nested in sub selectors,`,`
`,`they can only appear in the style block itself, `,A('strong',{},[`@media`]),` and`,`
`,A('strong',{},[`@supports`]),` can appear in nested selectors as well.`])]),A('li',{},[A('p',{},[A('strong',{},[`@font-face`]),` and `,A('strong',{},[`@keyframes`]),` rules are global, so styles in`,`
`,`other components can use defined entities.`])])]),A('p',{},[`Try resizing the browser to see the text in orange`,`!`])])}),d=c;export default d;