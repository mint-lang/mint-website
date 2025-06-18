import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`component Main {
  style base {
    font-family: 'Comic Sans MS', cursive;
    font-size: 2em;
    color: purple;
  }

  fun render : Html {
    <p::base>
      "This is a paragraph."
    </p>
  }
}`,contents:`component Main {
  style base {
    /* Styles go here. */
  }

  fun render : Html {
    <p::base>
      "This is a paragraph."
    </p>
  }
}`})],contents:A(B,{},[A('p',{},[`In HTML, you normally put your styles into a `,A('code',{},[`<style>`]),` element. In Mint,`,`
`,`you put it into `,A('code',{},[`style`]),` blocks.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`base`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"property"},[`font-family`]),`: 'Comic Sans MS', cursive;
`]),A('span',{class:"line"},[`  `,A('span',{class:"property"},[`font-size`]),`: 2em;
`]),A('span',{class:"line"},[`  `,A('span',{class:"property"},[`color`]),`: purple;
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Style blocks are like CSS classes, they have a name and can be added to`,`
`,`any element in the component.`]),A('p',{},[`Styling is a topic so big that it has many chapters, so stick around`,`
`,`to learn everything about it`,`!`]),A('p',{},[`For now as an exercise, apply the styles above to the text in the`,`
`,`component.`])])}),d=c;export default d;