import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  style root {
    .namespace { color: orangered; }
    .string { color: seagreen; }

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
    let {button, code} =
      @highlight {
        <button>"Hello World!"</button>
      }

    <div>
      button

      <pre::root><code>code</code></pre>
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`The `,A('code',{},[`@highlight`]),` directive returns the value of the block, and its`,`
`,`syntax highlighted version as `,A('code',{},[`Tuple(a, Html)`]),`.`]),A('p',{},[`In the example on the right, we render a button a display its`,`
`,`highlighted source code below it with some styles.`]),A('hr',{},[]),A('p',{},[`For more information, check out the `,A('a',{href:"/reference/directives/highlight"},[`reference page`]),`.`])])}),d=c;export default d;