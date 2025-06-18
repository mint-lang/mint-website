import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`component Main {
  fun render : Html {
    let cats =
      [
        {"Henri The Existential Cat", "OUtn3pvWmpg"},
        {"Keyboard Cat", "J---aiyznGQ"},
        {"Maru", "z_AbfPXTKms"},
      ]

    <div>
      <h1>"The Famous Cats of YouTube"</h1>

      <ul>
        for cat of cats {
          <li>
            <a
              href="https://www.youtube.com/watch?v=#{cat[1]}"
              target="_blank">
              cat[0]
            </a>
          </li>
        }
      </ul>
    </div>
  }
}`,contents:`component Main {
  fun render : Html {
    let cats =
      [
        {"Henri The Existential Cat", "OUtn3pvWmpg"},
        {"Keyboard Cat", "J---aiyznGQ"},
        {"Maru", "z_AbfPXTKms"},
      ]

    <div>
      <h1>"The Famous Cats of YouTube"</h1>

      <ul>
        /*
        Put this in a for expression.

        <li>
          <a
            href="https://www.youtube.com/watch?v=#{cat[1]}"
            target="_blank">
            cat[0]
          </a>
        </li>
        */
      </ul>
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`As most other languages, we have a construct to iterate over certain`,`
`,`data structures. It`,`'`,`s the `,A('code',{},[`for`]),` block, and it looks like this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`for`]),` `,A('span',{class:"variable"},[`item`]),` `,A('span',{class:"keyword"},[`of`]),` `,A('span',{class:"variable"},[`iterable`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`expressions`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Unlike in some languages, here `,A('code',{},[`for`]),` is an expression and not a`,`
`,`statement, and because of this it returns an `,A('code',{},[`Array(item)`]),` where`,`
`,A('code',{},[`item`]),` is the type of the last `,A('code',{},[`expression`]),`.`]),A('p',{},[`Currently, it can iterate through these types: `,A('code',{},[`Array(item)`]),`, `,A('code',{},[`Set(item)`]),`,`,`
`,`and `,A('code',{},[`Map(key,value)`]),`.`]),A('h3',{},[`Filtering`]),A('p',{},[`The `,A('code',{},[`for`]),` block can filter an array based on some condition specified`,`
`,`in a `,A('code',{},[`when`]),` block:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// This returns [0,2,4]`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`for`]),` `,A('span',{class:"variable"},[`number`]),` `,A('span',{class:"keyword"},[`of`]),` [`,A('span',{class:"number"},[`0`]),`,`,A('span',{class:"number"},[`1`]),`,`,A('span',{class:"number"},[`2`]),`,`,A('span',{class:"number"},[`3`]),`,`,A('span',{class:"number"},[`4`]),`] {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`number`]),`
`]),A('span',{class:"line"},[`} `,A('span',{class:"keyword"},[`when`]),` {
`]),A('span',{class:"line"},[`  (`,A('span',{class:"variable"},[`number`]),` `,A('span',{class:"operator"},[`%`]),` `,A('span',{class:"number"},[`2`]),`) `,A('span',{class:"operator"},[`==`]),` `,A('span',{class:"number"},[`0`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Let`,`'`,`s display the links of the cat videos using a `,A('code',{},[`for`]),` expression.`])])}),d=c;export default d;