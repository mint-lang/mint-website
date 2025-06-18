import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`type User {
  LoggedIn(String)
  Visitor
}

component Main {
  fun render : Html {
    let user =
      User.LoggedIn("Joe")

    <div>
      case user {
        LoggedIn(name) => "I am #{name}!"
        Visitor => "I am a visitor!"
      }
    </div>
  }
}`,contents:`type User {
  LoggedIn(String)
  Visitor
}

component Main {
  fun render : Html {
    let user =
      User.Visitor

    <div>
      case user {
        LoggedIn(name) => "I am #{name}!"
        Visitor => "I am a visitor!"
      }
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`You can declare two kinds of custom types with the `,A('code',{},[`type`]),` keyword.`,`
`,`One of them is `,A('a',{href:"https://en.wikipedia.org/wiki/Algebraic_data_type"},[`Algebraic Data Types`]),`. With them it`,`'`,`s possible to`,`
`,`describe data which contains different types of values (called`,`
`,`variants).`]),A('p',{},[`For example, a type for a logged in state can be written as two`,`
`,`variants:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`type`]),` `,A('span',{class:"type"},[`User`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`LoggedIn`]),`(`,A('span',{class:"type"},[`String`]),`)
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Visitor`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`You can create a value of a type variant by using its name and`,`
`,`parameters:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"type"},[`User`]),`.`,A('span',{class:"type"},[`LoggedIn`]),`(`,A('span',{class:"string"},[`"Joe"`]),`)`])])]),A('p',{},[`You can name parameters of variants which make them more descriptive:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`type`]),` `,A('span',{class:"type"},[`User`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`LoggedIn`]),`(`,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"type"},[`String`]),`)
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Visitor`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`You can refer to the name when destructuring:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"type"},[`LoggedIn`]),`(`,A('span',{class:"variable"},[`user`]),`) =
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`User`]),`.`,A('span',{class:"type"},[`LoggedIn`]),`(`,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"Joe"`]),`)`])])]),A('p',{},[`As an exercise, change the given example to show `,A('code',{},[`"Joe"`]),` as the`,`
`,`logged in user.`])])}),d=c;export default d;