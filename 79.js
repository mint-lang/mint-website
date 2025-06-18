import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`type User {
  name : String,
  age : Number
}

component Main {
  const JSON =
    <<~JSON
    {
      "name": "John Doe",
      "aged": 37
    }
    JSON

  fun render : String {
    let Ok(object) =
      Json.parse(JSON) or return "Cannot parse JSON!"

    let Ok(user) =
      decode object as User or return "Cannot decode object!"

    "#{user.name} - age: #{user.age}"
  }
}`,contents:`type User {
  name : String,
  age : Number
}

component Main {
  const JSON =
    <<~JSON
    {
      "name": "John Doe",
      "age": 37
    }
    JSON

  fun render : String {
    let Ok(object) =
      Json.parse(JSON) or return "Cannot parse JSON!"

    let Ok(user) =
      decode object as User or return "Cannot decode object!"

    "#{user.name} - age: #{user.age}"
  }
}`})],contents:A(B,{},[A('p',{},[`Mint would not be useful if we could not get data outside of program,`,`
`,`and we need to make sure that the data we get conforms to the defined`,`
`,`types.`]),A('p',{},[`One of the ways we can do that is the `,A('code',{},[`decode`]),` expression. It takes a`,`
`,`raw JavaScript object and a type and checks the object against the type.`,`
`,`If it matches it will return the typed object and if it`,`'`,`s not, it will`,`
`,`return an error.`]),A('p',{},[`The return type of the expression is `,A('code',{},[`Result(Object.Error, a)`]),` where`,`
`,A('code',{},[`a`]),` is the type.`]),A('p',{},[`In the example on the right, we use the `,A('a',{href:"/reference/blocks#early-return"},[`let destructuring with early`,`
`,`return`]),` to match the results.`]),A('p',{},[`As an exercise, try to change the JSON or the parsed object to be`,`
`,`invalid.`])])}),d=c;export default d;