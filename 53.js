import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`component Main {
  fun getUsername() {
    Result.Err("alice")
  }

  fun getPassword() {
    Result.Ok("hunter2")
  }

  fun logIn(username: String, password: String) {
    Result.Ok("Welcome")
  }

  fun render : String {
    let Ok(username) =
      getUsername() or return "Cannot get username!"

    let Ok(password) =
      getPassword() or return "Cannot get password!"

    let Ok(greeting) =
      logIn(username, password) or return "Cannot login!"

    greeting
  }
}`,contents:`component Main {
  fun getUsername() {
    Result.Ok("alice")
  }

  fun getPassword() {
    Result.Ok("hunter2")
  }

  fun logIn(username: String, password: String) {
    Result.Ok("Welcome")
  }

  fun render : String {
    let Ok(username) =
      getUsername() or return "Cannot get username!"

    let Ok(password) =
      getPassword() or return "Cannot get password!"

    let Ok(greeting) =
      logIn(username, password) or return "Cannot login!"

    greeting
  }
}`})],contents:A(B,{},[A('p',{},[A('code',{},[`let`]),` statements can destructure a pattern instead of just assigning a`,`
`,`value to a variable:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` {`,A('span',{class:"variable"},[`string`]),`, `,A('span',{class:"variable"},[`number`]),`} = {`,A('span',{class:"string"},[`"A"`]),`, `,A('span',{class:"number"},[`0`]),`}`])])]),A('p',{},[`If the pattern is not exhaustive, then you need to return early with`,`
`,`the `,A('code',{},[`or return`]),` keywords.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"variable"},[`value`]),`) =
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Maybe`]),`.`,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"string"},[`"Hello"`]),`) `,A('span',{class:"keyword"},[`or`]),` `,A('span',{class:"keyword"},[`return`]),` `,A('span',{class:"string"},[`"It's nothing!"`]),A('span',{class:"string"},[`"It's nothing!"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"string"},[`"It's just`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`value`]),A('span',{class:"string"},[`}!"`])])])]),A('p',{},[`It`,`'`,`s good for handling many results with different errors types, as seen`,`
`,`in the example on the right.`]),A('p',{},[`Try changing the return value of the functions to an error to see how`,`
`,`it works`,`!`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"type"},[`Result`]),`.`,A('span',{class:"type"},[`Err`]),`(`,A('span',{class:"string"},[`"Something went wrong!"`]),`)`])])])])}),d=c;export default d;