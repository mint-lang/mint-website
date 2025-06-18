import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : Html {
    <div>
      for item of ["Joe", "World"] {
        <div>
          item
        </div>
      }
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`An `,A('code',{},[`Array(a)`]),` is a generic type containing elements of any other type.`,`
`,`They are typically created with an array literal:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`[`,A('span',{class:"number"},[`1`]),`, `,A('span',{class:"number"},[`2`]),`, `,A('span',{class:"number"},[`3`]),`]        `,A('span',{class:"comment"},[`// Array(Number)`]),`
`]),A('span',{class:"line"},[`[`,A('span',{class:"string"},[`"A"`]),`, `,A('span',{class:"string"},[`"B"`]),`, `,A('span',{class:"string"},[`"C"`]),`]  `,A('span',{class:"comment"},[`// Array(String)`])])])]),A('p',{},[`You can define the type of arrays using the `,A('code',{},[`of`]),` keyword. It is useful`,`
`,`for defining the type of empty arrays:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`[] `,A('span',{class:"keyword"},[`of`]),` `,A('span',{class:"type"},[`Number`]),`
`]),A('span',{class:"line"},[`[`,A('span',{class:"number"},[`1`]),`,`,A('span',{class:"number"},[`2`]),`,`,A('span',{class:"number"},[`3`]),`] `,A('span',{class:"keyword"},[`of`]),` `,A('span',{class:"type"},[`Number`])])])]),A('p',{},[`We can access an item at the given index using the bracket  notation:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`array`]),` =
`]),A('span',{class:"line"},[`  [`,A('span',{class:"number"},[`1`]),`, `,A('span',{class:"number"},[`2`]),`, `,A('span',{class:"number"},[`3`]),`]
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`array`]),`[`,A('span',{class:"number"},[`0`]),`] `,A('span',{class:"operator"},[`==`]),` `,A('span',{class:"type"},[`Maybe`]),`.`,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"number"},[`1`]),`)`])])]),A('p',{},[`When accessing an item this way, the type of the item will be `,A('code',{},[`Maybe(a)`]),`
`,`where `,A('code',{},[`a`]),` is the type of the item in the array. This is so because there`,`
`,`might not be an item at that index.`])])}),d=c;export default d;