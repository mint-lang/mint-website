import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  style root {
    .namespace { color: orangered; }
    .string { color: seagreen; }
    .keyword { color: purple; }
    .type { color: blue; }

    .line {
      counter-increment: snippet;

      &:before {
        content: counter(snippet) "|";
        margin-right: 5px;
        opacity: 0.5;
      }
    }
  }

  fun render : Html {
    <pre::root>
      <code>
        @highlight-file(Button.mint)
      </code>
    </pre>
  }
}`}),b({path:`Button.mint`,solution:``,contents:`component Button {
  fun render : Html {
    <button>"Hello World!"</button>
  }
}`})],contents:A(B,{},[A('p',{},[`The `,A('code',{},[`@highlight-file`]),` directive is similar to the `,A('code',{},[`@highlight`]),`
`,`directive, but it highlights a file instead of a block.`]),A('p',{},[`In the example on the right, we display the `,A('code',{},[`Button.mint`]),` file`,`
`,`highlighted with some styles.`]),A('hr',{},[]),A('p',{},[`For more information, check out the `,A('a',{href:"/reference/directives/highlight-file"},[`reference page`]),`.`])])}),d=c;export default d;