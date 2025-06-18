import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`type User {
  email : String,
  name : String,
  age : Number,
  id : Number
}

component Main {
  fun render : Html {
    let user =
      {
        email: "john@doe.com",
        name: "John Doe",
        age: 32,
        id: 1
      }

    <div>
      "Hello #{user.name}!"
    </div>
  }
}`,contents:`type User {
  email : String,
  name : String,
  id : Number
}

component Main {
  fun render : Html {
    let user =
      {
        email: "john@doe.com",
        name: "John Doe",
        id: 1
      }

    <div>
      "Hello #{user.name}!"
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`The other kind of custom types are records, which are data structures`,`
`,`that have a fixed set of keys:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`type`]),` `,A('span',{class:"type"},[`User`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`email`]),` : `,A('span',{class:"type"},[`String`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`id`]),` : `,A('span',{class:"type"},[`Number`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`The easiest way to create an instance of a record is with a record`,`
`,`literal:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`{
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`email`]),`: `,A('span',{class:"string"},[`"john@doe.com"`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"John Doe"`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`id`]),`: `,A('span',{class:"number"},[`1`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`You can access a record`,`'`,`s fields using the dot (`,A('code',{},[`.`]),`) notation:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"variable"},[`user`]),`.`,A('span',{class:"variable"},[`name`]),` `,A('span',{class:"operator"},[`==`]),` `,A('span',{class:"string"},[`"John Doe"`])])])]),A('p',{},[`As an exercise, add an `,A('code',{},[`age`]),` field to the record`,`!`])])}),d=c;export default d;