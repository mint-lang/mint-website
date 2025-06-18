import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`case`]),A('p',{},[`The case expression allows us to say `,`"`,`if the data has this shape, then do`,`
`,`that`,`"`,`, which we call `,A('em',{},[`pattern matching`]),`.`]),A('p',{},[`Here we match on a `,A('code',{},[`Number`]),` and return a specific string for the values `,A('code',{},[`0`]),`,`,`
`,A('code',{},[`1`]),`, and `,A('code',{},[`2`]),`. The final pattern `,A('code',{},[`n`]),` matches any other value that did not`,`
`,`match any of the previous patterns.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`case`]),` `,A('span',{class:"variable"},[`some_number`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"number"},[`0`]),` => `,A('span',{class:"string"},[`"Zero"`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"number"},[`1`]),` => `,A('span',{class:"string"},[`"One"`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"number"},[`2`]),` => `,A('span',{class:"string"},[`"Two"`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`n`]),` => `,A('span',{class:"string"},[`"Some other number"`]),` `,A('span',{class:"comment"},[`// This matches anything`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`A case is an expression, meaning it returns a value and can be used`,`
`,`anywhere we would use a value. For example, we can name the value of a case`,`
`,`expression with a let binding.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`description`]),` =
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`case`]),` `,A('span',{class:"keyword"},[`true`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`true`]),` => `,A('span',{class:"string"},[`"It's true!"`]),`
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`false`]),` => `,A('span',{class:"string"},[`"It's not true."`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`description`]),`  `,A('span',{class:"comment"},[`// => "It's true!"`])])])]),A('h2',{},[`Custom Types`]),A('p',{},[`When given a custom type record, we can pattern match on it to determine`,`
`,`which record constructor matches, and to assign names to any contained`,`
`,`values.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`type`]),` `,A('span',{class:"type"},[`User`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`LoggedIn`]),`(`,A('span',{class:"type"},[`String`]),`)
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Guest`]),`
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`case`]),` `,A('span',{class:"variable"},[`user`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`LoggedIn`]),`(`,A('span',{class:"variable"},[`name`]),`) => `,A('span',{class:"variable"},[`name`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Guest`]),` => `,A('span',{class:"string"},[`"Guest user"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Alternative Patterns`]),A('p',{},[`Alternative patterns can be given for a case clause using the `,A('code',{},[`|`]),` operator.`,`
`,`If any of the patterns match then the clause matches.`]),A('p',{},[`If a pattern defines a variable then all of the alternative patterns for`,`
`,`that clause must also define a variable with the same name and same type.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`case`]),` `,A('span',{class:"variable"},[`number`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"number"},[`2`]),` | `,A('span',{class:"number"},[`4`]),` | `,A('span',{class:"number"},[`6`]),` | `,A('span',{class:"number"},[`8`]),` => `,A('span',{class:"string"},[`"This is an even number"`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"number"},[`1`]),` | `,A('span',{class:"number"},[`3`]),` | `,A('span',{class:"number"},[`5`]),` | `,A('span',{class:"number"},[`7`]),` => `,A('span',{class:"string"},[`"This is an odd number"`]),`
`]),A('span',{class:"line"},[`  _ => `,A('span',{class:"string"},[`"I'm not sure"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Destructuring`]),A('p',{},[`A case expression can be used to destructure values that contain other`,`
`,`values, such as tuples, arrays and custom types.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`case`]),` `,A('span',{class:"variable"},[`xs`]),` {
`]),A('span',{class:"line"},[`  [] => `,A('span',{class:"string"},[`"This list is empty"`]),`
`]),A('span',{class:"line"},[`  [`,A('span',{class:"variable"},[`a`]),`] => `,A('span',{class:"string"},[`"This list has 1 element"`]),`
`]),A('span',{class:"line"},[`  [`,A('span',{class:"variable"},[`a`]),`, `,A('span',{class:"variable"},[`b`]),`] => `,A('span',{class:"string"},[`"This list has 2 elements"`]),`
`]),A('span',{class:"line"},[`  => `,A('span',{class:"string"},[`"This list has more than 2 elements"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`It`,`'`,`s not just the top level data structure that can be pattern matched,`,`
`,`contained values can also be matched. This gives case the ability to`,`
`,`concisely express flow control that might be verbose without pattern`,`
`,`matching.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`case`]),` `,A('span',{class:"variable"},[`xs`]),` {
`]),A('span',{class:"line"},[`  [[]] => `,A('span',{class:"string"},[`"The only element is an empty list"`]),`
`]),A('span',{class:"line"},[`  [[], ...`,A('span',{class:"variable"},[`rest`]),`] => `,A('span',{class:"string"},[`"The 1st element is an empty list"`]),`
`]),A('span',{class:"line"},[`  [[`,A('span',{class:"number"},[`4`]),`], ...`,A('span',{class:"variable"},[`rest`]),`] => `,A('span',{class:"string"},[`"The 1st element is a list of the number 4"`]),`
`]),A('span',{class:"line"},[`  => `,A('span',{class:"string"},[`"Something else"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('h3',{},[`Discard`]),A('p',{},[`You can use `,A('code',{},[`_`]),` to discard values that you don`,`'`,`t need:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`case`]),` [`,A('span',{class:"string"},[`"a"`]),`, `,A('span',{class:"string"},[`"b"`]),`, `,A('span',{class:"string"},[`"c"`]),`] {
`]),A('span',{class:"line"},[`  [] => `,A('span',{class:"string"},[`"This list is empty"`]),`
`]),A('span',{class:"line"},[`  [_] => `,A('span',{class:"string"},[`"This list has 1 element"`]),`
`]),A('span',{class:"line"},[`  [_, _] => `,A('span',{class:"string"},[`"This list has 2 elements"`]),`
`]),A('span',{class:"line"},[`  _ => `,A('span',{class:"string"},[`"This list has more than 2 elements"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('h3',{},[`Let Destructuring`]),A('p',{},[`Pattern matching also works in `,A('code',{},[`let`]),` bindings. Patterns that do not match`,`
`,`all instances of that type needs to be handled with early returns.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// a is 1 will not return`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`let`]),` [`,A('span',{class:"variable"},[`a`]),`] = [`,A('span',{class:"number"},[`1`]),`] `,A('span',{class:"keyword"},[`or`]),` `,A('span',{class:"keyword"},[`return`]),` `,A('span',{class:"number"},[`0`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// Will return 0 since the pattern has 1 element but the value has 2`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`let`]),` [`,A('span',{class:"variable"},[`b`]),`] = [`,A('span',{class:"number"},[`1`]),`, `,A('span',{class:"number"},[`2`]),`] `,A('span',{class:"keyword"},[`or`]),` `,A('span',{class:"keyword"},[`return`]),` `,A('span',{class:"number"},[`0`])])])]),A('h3',{},[`Awaiting Promises`]),A('p',{},[`You can use the `,A('code',{},[`await`]),` keyword before the subject to wait for a promise`,`
`,`to resolve before doing the pattern matching:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`case`]),` `,A('span',{class:"keyword"},[`await`]),` `,A('span',{class:"variable"},[`request`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Ok`]),`(`,A('span',{class:"variable"},[`response`]),`) => `,A('span',{class:"string"},[`"The request succeeded!"`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Err`]),`(`,A('span',{class:"variable"},[`response`]),`) => `,A('span',{class:"string"},[`"The request failed!"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`The return type of an expression like that will always be `,A('code',{},[`Promise(a)`]),`
`,`where `,A('code',{},[`a`]),` is the type of the branches.`])]),b=a;export default b;