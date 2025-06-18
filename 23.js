import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  state counter = 0

  fun increment {
    next { counter: counter + 1 }
  }

  fun decrement {
    next { counter: counter - 1 }
  }

  fun render {
    <div>
      <button onClick={decrement}>
        "Decrement"
      </button>

      <span>
        Number.toString(counter)
      </span>

      <button onClick={increment}>
        "Increment"
      </button>
    </div>
  }
}`})],contents:A(B,{},[A('h2',{},[`Introduction`]),A('p',{},[`Welcome to the Mint tutorial. This is an interactive exploration of`,`
`,`the Mint programming language, designed to make you productive as`,`
`,`quickly as possible.`]),A('p',{},[`Make sure to also check out the `,A('a',{href:"/reference"},[`reference`]),` and the`,`
`,A('a',{href:"/"},[`core library`])]),A('h3',{},[`What is Mint?`]),A('p',{},[`Mint is a language specifically created for writing `,A('strong',{},[`single-page`,`
`,`web applications`]),`.`]),A('p',{},[`It provides you with all the necessary tooling to write `,A('strong',{},[`error free`]),`,`,`
`,A('strong',{},[`readable`]),`, and `,A('strong',{},[`maintainable`]),` software.`]),A('p',{},[`Mint is strongly typed, and compiles to JavaScript. This means, your`,`
`,`code is less prone to errors, easier to maintain, and benefits from`,`
`,`optimizations done by the compiler.`]),A('h3',{},[`How to use this tutorial`]),A('p',{},[`You`,`'`,`ll need to have basic familiarity with HTML, CSS and JavaScript to`,`
`,`understand Mint.`]),A('p',{},[`As you progress through the tutorial, you`,`'`,`ll be presented with mini`,`
`,`exercises designed to illustrate new features. Later chapters build on`,`
`,`the knowledge gained in earlier ones, so it`,`'`,`s recommended that you go`,`
`,`from start to finish. If necessary, you can navigate via the dropdown`,`
`,`above (click `,`'`,`Introduction`,`'`,`).`]),A('p',{},[`Some tutorial chapters will have a button that you can click if you`,`
`,`get stuck following the instructions. Try not to rely on it too much;`,`
`,`you will learn faster by figuring out where to put each suggested code`,`
`,`block and manually typing it in to the editor.`])])}),d=c;export default d;