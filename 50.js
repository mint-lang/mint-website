import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`component Main {
  state number : Number = 0

  fun handleChange (event : Html.Event) {
    next { number: Number.fromString(Dom.getValue(event.target)) or 0 }
  }

  fun render : Html {
    <div>
      <input
        value={Number.toString(number)}
        onChange={handleChange}
        type="number"/>

      <p>
        case number {
          0 => "Zero"
          1 => "One"
          2 => "Two"
          3 => "Three"
          4 => "Four"
          => "Some other number" // This matches anything
        }
      </p>
    </div>
  }
}`,contents:`component Main {
  state number : Number = 0

  fun handleChange (event : Html.Event) {
    next { number: Number.fromString(Dom.getValue(event.target)) or 0 }
  }

  fun render : Html {
    <div>
      <input
        value={Number.toString(number)}
        onChange={handleChange}
        type="number"/>

      <p>
        case number {
          0 => "Zero"
          1 => "One"
          2 => "Two"
          => "Some other number" // This matches anything
        }
      </p>
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`The `,A('code',{},[`case`]),` expression allows us to say `,`"`,`if the data has this shape`,`
`,`then, do that`,`"`,`, which we call `,A('em',{},[`pattern matching`]),`.`]),A('p',{},[`Here we match on a `,A('code',{},[`Number`]),` and return a specific string for the`,`
`,`values `,A('code',{},[`0`]),`, `,A('code',{},[`1`]),`, and `,A('code',{},[`2`]),`. The final branch matches any other value`,`
`,`that did not match any of the previous branches.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`case`]),` `,A('span',{class:"variable"},[`number`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"number"},[`0`]),` => `,A('span',{class:"string"},[`"Zero"`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"number"},[`1`]),` => `,A('span',{class:"string"},[`"One"`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"number"},[`2`]),` => `,A('span',{class:"string"},[`"Two"`]),`
`]),A('span',{class:"line"},[`  => `,A('span',{class:"string"},[`"Some other number"`]),` `,A('span',{class:"comment"},[`// This matches anything`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`The `,A('code',{},[`case`]),` expression is more powerful than this simple example shows,`,`
`,`and we will be covering it in other lessons (pattern matching).`]),A('p',{},[`As an exercise, you can add the branches for `,A('code',{},[`3`]),` and `,A('code',{},[`4`]),`.`])])}),d=c;export default d;