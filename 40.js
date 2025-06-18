import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`type User {
  name : String,
  age : Number
}

component Main {
  const USERS = [
    { name: "John", age: 36 },
    { name: "Doe", age: 24 }
  ]

  fun render : Html {
    <pre>
      USERS
      |> Array.map(.name(User))
      |> String.join("\\n")
    </pre>
  }
}`,contents:`type User {
  name : String,
  age : Number
}

component Main {
  const USERS = [
    { name: "John", age: 36 },
    { name: "Doe", age: 24 }
  ]

  fun render : Html {
    <pre>
      USERS
      |> Array.map((user : User) : String { user.name })
      |> String.join("\\n")
    </pre>
  }
}`})],contents:A(B,{},[A('p',{},[`There is a syntax sugar for creating a field accessor (a function which`,`
`,`returns one of the fields of a record), so instead of this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`(`,A('span',{class:"variable"},[`user`]),` : `,A('span',{class:"type"},[`User`]),`) : `,A('span',{class:"type"},[`String`]),` { `,A('span',{class:"variable"},[`user`]),`.`,A('span',{class:"variable"},[`name`]),` }`])])]),A('p',{},[`You can just write:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`.`,A('span',{class:"variable"},[`name`]),`(`,A('span',{class:"type"},[`User`]),`)`])])]),A('p',{},[`Which results in the same function. This is super helpful in piped calls`,`
`,`since it`,`'`,`s more readable and reduces cognitive load.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"variable"},[`users`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"operator"},[`|>`]),` `,A('span',{class:"type"},[`Array`]),`.`,A('span',{class:"variable"},[`map`]),`(.`,A('span',{class:"variable"},[`age`]),`(`,A('span',{class:"type"},[`User`]),`))
`]),A('span',{class:"line"},[``,A('span',{class:"operator"},[`|>`]),` `,A('span',{class:"type"},[`Array`]),`.`,A('span',{class:"variable"},[`map`]),`(`,A('span',{class:"type"},[`Number`]),`.`,A('span',{class:"variable"},[`toString`]),`)
`]),A('span',{class:"line"},[``,A('span',{class:"operator"},[`|>`]),` `,A('span',{class:"type"},[`String`]),`.`,A('span',{class:"variable"},[`join`]),`(`,A('span',{class:"string"},[`"\\n"`]),`)`])])]),A('p',{},[`As an exercise, replace the anonymous function with a field accessor.`])])}),d=c;export default d;