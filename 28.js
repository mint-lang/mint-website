import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : Html {
    let tuple =
      {"Hello", "World"}

    <div>
      "#{tuple[0]} #{tuple[1]}!"
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[A('code',{},[`Tuple`]),` is a data structure which contains a fixed set of values, where`,`
`,`each value can have a different type.`]),A('ul',{},[A('li',{},[`tuples are useful when you don`,`'`,`t want to declare a record`]),A('li',{},[`they can contain any number of items (minimum two)`]),A('li',{},[`their items can be destructured and matched against`])]),A('p',{},[`A tuple can be created by specifying its items separated by commas`,`
`,`inside curly brackets `,A('code',{},[`{...}`])]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`{`,A('span',{class:"string"},[`"First Value"`]),`, `,A('span',{class:"number"},[`10`]),`, `,A('span',{class:"keyword"},[`true`]),`}`])])]),A('p',{},[`The type of a tuple is `,A('code',{},[`Tuple(...)`]),` where each parameter, in that`,`
`,`order, is an item of the tuple.`]),A('p',{},[`For example, the type `,A('code',{},[`Tuple(String, Number, Bool)`]),` represents a tuple`,`
`,`where the first element is a `,A('code',{},[`String`]),` the second is a `,A('code',{},[`Number`]),` the`,`
`,`third is a `,A('code',{},[`Bool`]),`.`]),A('p',{},[`We can access a tuples item at a given index using the bracket`,`
`,`notation:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`tuple`]),` =
`]),A('span',{class:"line"},[`  {`,A('span',{class:"string"},[`"First Value"`]),`, `,A('span',{class:"number"},[`10`]),`, `,A('span',{class:"keyword"},[`true`]),`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`tuple`]),`[`,A('span',{class:"number"},[`0`]),`] `,A('span',{class:"operator"},[`==`]),` `,A('span',{class:"string"},[`"First Value"`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`tuple`]),`[`,A('span',{class:"number"},[`1`]),`] `,A('span',{class:"operator"},[`==`]),` `,A('span',{class:"number"},[`10`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`tuple`]),`[`,A('span',{class:"number"},[`2`]),`] `,A('span',{class:"operator"},[`==`]),` `,A('span',{class:"keyword"},[`true`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`tuple`]),`[`,A('span',{class:"number"},[`3`]),`] `,A('span',{class:"comment"},[`/* Returns a compile time error. */`])])])])])}),d=c;export default d;