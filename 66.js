import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`component Main {
  style base {
    font-family: 'Comic Sans MS', cursive;
    font-size: 2em;
    color: purple;
  }

  fun render : Html {
    <div>
      <p::base>
        "This is a paragraph."
      </p>

      <Nested/>
    </div>
  }
}`,contents:`component Main {
  style base {
    font-family: 'Comic Sans MS', cursive;
    font-size: 2em;
    color: purple;
  }

  fun render : Html {
    <div>
      <p::base>
        "This is a paragraph."
      </p>
    </div>
  }
}`}),b({path:`Nested.mint`,solution:`component Nested {
  fun render : Html {
    <p>"This is another paragraph."</p>
  }
}`,contents:`component Nested {
  fun render : Html {
    <p>"This is another paragraph."</p>
  }
}`})],contents:A(B,{},[A('p',{},[`It would be impractical to put your entire app in a single component.`,`
`,`Instead, we can write components in other files and use them as we`,`
`,`would other elements.`]),A('p',{},[`Once your component is ready, all you need to do is add it as markup:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"type"},[`Nested`]),`/>`])])]),A('p',{},[`You can notice that there is no `,A('code',{},[`import`]),` keyword. That`,`'`,`s because the`,`
`,`compiler finds all `,A('code',{},[`.mint`]),` files in your project and parses them`,`
`,`automatically. Anything in them is available everywhere.`]),A('p',{},[`Also notice that the component name `,A('code',{},[`Nested`]),` is capitalized. This`,`
`,`convention has been adopted to allow us to differentiate between`,`
`,`user-defined components and regular HTML tags.`]),A('p',{},[`Now let`,`'`,`s add the `,A('code',{},[`Nested`]),` component after the paragraph`,`!`])])}),d=c;export default d;