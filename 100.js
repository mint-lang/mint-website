import {createElement as B,fragment as C} from "./runtime.js";import {A} from "./101.js";export const a=(()=>{const b=B(A,{a:`vertical`,b:`75px`,c:`component Main {
  state content : String = "Click me to load some other text!"

  const TEXT = defer "Some long text here..."

  fun render : Html {
    <div onClick={() { next { content: await TEXT } }}>
      content
    </div>
  }
}`});const c=B(A,{a:`vertical`,b:`75px`,c:`async component Greeter {
  fun render : Html {
    <div>
      "Hello World! I'm loaded asynchronously!"
    </div>
  }
}

component Main {
  state shown : Bool = false

  fun render : Html {
    <div>
      <button onclick={() { next { shown: true } }}>
        "Show Greeting!"
      </button>

      if shown {
        <Greeter/>
      }
    </div>
  }
}`});const d=B(A,{a:`vertical`,b:`450px`,c:`component Main {
  fun render : Html {
    case Maybe.Just(Maybe.Just("Hello World!")) {
      Just(Just(greeting)) => greeting
    }
  }
}`});const e=B(A,{a:`vertical`,b:`100px`,c:`component Main {
  fun render : Html {
    let variable =
      "Hello World!"

    <div>
      variable
      <br/>
      "String"
      <br/>
      42
      <br/>
      ["Item1", "Item2"]
    </div>
  }
}`});return B(C,{},[B('p',{},[`Mint is a type-safe programming language for writing single page`,`
`,`applications. Today, Mint `,B('code',{},[`0.20.0`]),` has been published, so let`,`'`,`s go`,`
`,`over all that`,`'`,`s new.`]),B('p',{},[`The last proper release was more than a year ago. As one of my New Year`,`'`,`s`,`
`,`resolutions was to release `,B('code',{},[`1.0`]),` (which didn`,`'`,`t happen) or at least make`,`
`,`substantial progress on it (which I did). So this release is a big step`,`
`,`towards `,B('code',{},[`1.0`]),`.`]),B('p',{},[`Most of the work went into rewrites and refactorings, but there are some`,`
`,`new language features and changes too.`]),B('h2',{},[`Rewrites, rewrites everywhere`,`!`]),B('p',{},[`Since `,B('code',{},[`0.19.0`]),` all but one part (type checker) of the source was`,`
`,`rewritten or refactored, here is a non-exhaustive list:`]),B('ul',{},[B('li',{},[B('strong',{},[`Runtime`]),` - Changed from `,B('a',{href:"https://preactjs.com/guide/v10/components/#class-components"},[`class components`]),` to `,B('a',{href:"https://preactjs.com/guide/v10/components/#functional-components"},[`functional`,`
`,`components`]),` and `,B('a',{href:"https://preactjs.com/guide/v10/signals"},[`signals`]),`, this allows a two level structure (`,`
`,`components have internal entities, otherwise is everything is one`,`
`,`level).`]),B('li',{},[B('strong',{},[`Compiler`]),` - It was rewritten to emit ES5 modules and to support`,`
`,`code-splitting.`]),B('li',{},[B('strong',{},[`CLI`]),` - Commands were reviewed and their flags or arguments`,`
`,`changed to better convey their functions. Some commands moved under`,`
`,`the `,B('code',{},[`tool`]),` group.`]),B('li',{},[B('strong',{},[`Formatter`]),` - It was rewritten to support line-length aware`,`
`,`formatting.`]),B('li',{},[B('strong',{},[`Error Messages`]),` - They were simplified internally, unified`,`
`,`and reviewed across the board.`]),B('li',{},[B('strong',{},[`Documentation Generator`]),` - It was rewritten to be HTML by default.`])]),B('h2',{},[`Deferred Code`]),B('p',{},[`With the compiler refactor, it`,`'`,`s now possible to asynchronously load`,`
`,`code with the `,B('code',{},[`defer`]),` keyword.`]),B('p',{},[`Any expression marked with `,B('code',{},[`defer`]),` is compiled into its own file`,`
`,`and can be loaded later with the `,B('code',{},[`await`]),` keyword.`]),B('p',{},[``,b,``]),B('p',{},[`This makes it easy to create for example blogs where the actual posts`,`
`,`are Mint files. This website is one example where we use this feature`,`
`,`extensively.`]),B('h2',{},[`Async Components`]),B('p',{},[`Components can now be marked `,B('code',{},[`async`]),`, which means they will be compiled`,`
`,`to their own file and will be loaded on demand when the component is`,`
`,`rendered on the screen.`]),B('p',{},[``,c,``]),B('h2',{},[`Fully Exhaustive Pattern Matching`]),B('p',{},[`Patterns previously were only matched for exhaustiveness at the top-level,`,`
`,`now missing patterns are reported at any nesting level.`]),B('p',{},[``,d,``]),B('h2',{},[`Easier HTML`]),B('p',{},[`Expressions now can be directly used in HTML tags (HTML expressions`,`
`,B('code',{},[`<{...}>`]),` are deprecated and will be removed from the language in the`,`
`,`next release), and in addition to `,B('code',{},[`String`]),`, `,B('code',{},[`Number`]),` can be used as well.`]),B('p',{},[``,e,``]),B('h2',{},[`New Website`]),B('p',{},[`The website (which you are on now) was also rewritten from scratch. The`,`
`,`previously separate `,B('a',{href:"/tutorial/"},[`tutorial`]),` and `,B('a',{href:"/sandbox/"},[`sandbox`]),` is now in the same code`,`
`,`base thanks to deferred code and async components.`]),B('p',{},[`The documentation of the language was improved considerably. Every`,`
`,`language feature is now documented and has a corresponding tutorial page.`]),B('p',{},[`Mint also has new logo and new branding (as you can see), it even has a`,`
`,B('a',{href:"/brand-book"},[`brand book`]),` of sorts.`]),B('h2',{},[`Call to Action`]),B('p',{},[`If you were looking at Mint but never tried it before, I think it is a`,`
`,`great time to give it a shot`,`!`,` It`,`'`,`s more stable, faster and more`,`
`,`approachable than ever.`]),B('hr',{},[]),B('p',{},[`These were just the highlights of the release, there are a lot more`,`
`,`changes which we will detail in several other posts, until then make sure`,`
`,`to read the full `,B('a',{href:"https://github.com/mint-lang/mint/releases/tag/0.20.0"},[`release notes`]),`.`])])})();export default a;