import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Custom Types`]),A('p',{},[`In Mint supports two kinds of custom types:`]),A('ul',{},[A('li',{},[A('a',{href:"https://en.wikipedia.org/wiki/Composite_data_type"},[`Composite Type`])]),A('li',{},[A('a',{href:"https://en.wikipedia.org/wiki/Algebraic_data_type"},[`Algebraic Data Type`])])]),A('h2',{},[`Composite Type`]),A('p',{},[`Composite types are called `,A('strong',{},[`records`]),`, `,A('strong',{},[`structs`]),`, or `,A('strong',{},[`objects`]),` in`,`
`,`various languages. A composite type is a collection of named fields, an`,`
`,`instance of which can be treated as a single value.`]),A('p',{},[`You can define a custom composite type like this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`type`]),` `,A('span',{class:"type"},[`User`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`email`]),` : `,A('span',{class:"type"},[`String`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`id`]),` : `,A('span',{class:"type"},[`Number`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`You can create an instance of this type (we will call them `,A('strong',{},[`records`]),` from`,`
`,`now own) like this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`{
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`email`]),`: `,A('span',{class:"string"},[`"john@doe.com"`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"John Doe"`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`id`]),`: `,A('span',{class:"number"},[`1`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Records are `,A('strong',{},[`immutable`]),`, so instead of mutating you can create a new`,`
`,`record with updated fields like this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`user`]),` =
`]),A('span',{class:"line"},[`  {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`email`]),`: `,A('span',{class:"string"},[`"john.doe@gmail.com"`]),`,
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"John Doe"`]),`,
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`id`]),`: `,A('span',{class:"number"},[`0`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`updatedUser`]),` =
`]),A('span',{class:"line"},[`  { `,A('span',{class:"variable"},[`user`]),` | `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"Stuart"`]),` }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`updatedUser`]),` `,A('span',{class:"operator"},[`==`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`email`]),`: `,A('span',{class:"string"},[`"john.doe@gmail.com"`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"Stuart"`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`id`]),`: `,A('span',{class:"number"},[`0`]),`
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Algebraic Data Type`]),A('p',{},[`They are used to describing data which contains `,A('strong',{},[`different types of`,`
`,`values`]),` (called variants).`]),A('p',{},[`For example, a type for a logged in state can be written as two variants:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`type`]),` `,A('span',{class:"type"},[`UserState`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`LoggedIn`]),`(`,A('span',{class:"type"},[`User`]),`)
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Visitor`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Since this is a type, it can be used in type signatures:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`fun`]),` isLoggedIn (`,A('span',{class:"variable"},[`userState`]),` : `,A('span',{class:"type"},[`UserState`]),`) : `,A('span',{class:"type"},[`Bool`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`case`]),` `,A('span',{class:"variable"},[`userState`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`LoggedIn`]),`(`,A('span',{class:"variable"},[`user`]),`) => `,A('span',{class:"keyword"},[`true`]),`
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Visitor`]),` => `,A('span',{class:"keyword"},[`false`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`isLoggedIn`]),`(`,A('span',{class:"type"},[`UserState`]),`.`,A('span',{class:"type"},[`LoggedIn`]),`(`,A('span',{class:"variable"},[`user`]),`)) `,A('span',{class:"comment"},[`// true`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`isLoggedIn`]),`(`,A('span',{class:"type"},[`UserState`]),`.`,A('span',{class:"type"},[`Visitor`]),`) `,A('span',{class:"comment"},[`// false`])])])]),A('p',{},[`As you can see from the code above, you can create instances of the type by`,`
`,`using its name then a dot then its variant and then any arguments it takes`,`
`,A('code',{},[`UserState.LoggedIn(user)`]),`, you can also match the variants in a`,`
`,A('a',{href:"/reference/control-flow/case"},[`case expression`]),`.`]),A('h3',{},[`Type Variables`]),A('p',{},[`You can define `,A('strong',{},[`type variables`]),` for a type so it can become `,A('strong',{},[`generic`]),`,`,`
`,`meaning that a type of values of a variant can be any other type.`]),A('p',{},[`The best example for this is the `,A('code',{},[`Result(error, value)`]),` type:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`type`]),` `,A('span',{class:"type"},[`Result`]),`(`,A('span',{class:"type_parameter"},[`error`]),`, `,A('span',{class:"type_parameter"},[`value`]),`) {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Err`]),`(`,A('span',{class:"type_parameter"},[`error`]),`)
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Ok`]),`(`,A('span',{class:"type_parameter"},[`value`]),`)
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`It can be used with any types for error and value:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// A result where the error and value is both string`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Result`]),`(`,A('span',{class:"type"},[`String`]),`, `,A('span',{class:"type"},[`String`]),`)
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// An example result type for HTTP requests.`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Result`]),`(`,A('span',{class:"type"},[`Http`]),`.`,A('span',{class:"type"},[`ErrorResponse`]),`, `,A('span',{class:"type"},[`Http`]),`.`,A('span',{class:"type"},[`Response`]),`)`])])]),A('h3',{},[`Named Parameters`]),A('p',{},[`A variants parameters can have names:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`type`]),` `,A('span',{class:"type"},[`Content`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Html`]),`(`,A('span',{class:"variable"},[`value`]),` : `,A('span',{class:"type"},[`Html`]),`, `,A('span',{class:"variable"},[`code`]),` : `,A('span',{class:"type"},[`Bool`]),`)
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Text`]),`(`,A('span',{class:"type"},[`String`]),`)
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Content`]),`.`,A('span',{class:"type"},[`Html`]),`(`,A('span',{class:"variable"},[`value`]),`: <></>, `,A('span',{class:"variable"},[`code`]),`: `,A('span',{class:"keyword"},[`true`]),`)`])])]),A('p',{},[`The parameters can be destructured using their name (and thus can be in`,`
`,`any order):`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`case`]),` `,A('span',{class:"variable"},[`content`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Html`]),`(`,A('span',{class:"variable"},[`code`]),`, `,A('span',{class:"variable"},[`value`]),`) => `,A('span',{class:"string"},[`""`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Text`]),`(`,A('span',{class:"variable"},[`value`]),`) => `,A('span',{class:"variable"},[`value`]),`
`]),A('span',{class:"line"},[`}`])])])]),b=a;export default b;