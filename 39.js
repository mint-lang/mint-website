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

    let updatedUser =
      { user | name: "Jane Doe", email: "jane@doe.com" }

    <div>
      "Hello #{updatedUser.name} at #{updatedUser.email}!"
    </div>
  }
}`,contents:`type User {
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

    let updatedUser =
      { user | name: "Jane Doe"}

    <div>
      "Hello #{updatedUser.name} at #{updatedUser.email}!"
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`Since values are immutable in Mint, you cannot modify a record directly,`,`
`,`but only create a new record. To achieve that, you can use the record`,`
`,`update syntax:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`user`]),` =
`]),A('span',{class:"line"},[`  {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`email`]),`: `,A('span',{class:"string"},[`"john@doe.com"`]),`,
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"John Doe"`]),`,
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`age`]),`: `,A('span',{class:"number"},[`32`]),`,
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`id`]),`: `,A('span',{class:"number"},[`1`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`{ `,A('span',{class:"variable"},[`user`]),` | `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"Jane Doe"`]),` }`])])]),A('p',{},[`It copies all the not specified fields of the base record and sets`,`
`,`the specified fields.`]),A('p',{},[`You can update more than one field at a time:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`{ `,A('span',{class:"variable"},[`user`]),` | `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"Jane Doe"`]),`, `,A('span',{class:"variable"},[`email`]),`: `,A('span',{class:"string"},[`"jane@doe.com"`]),` }`])])]),A('p',{},[`As an exercise, also update the `,A('code',{},[`email`]),` field of the record`,`!`])])}),d=c;export default d;