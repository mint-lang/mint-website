import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`type User {
  name : String,
  age : Number
}

component Main {
  fun render : Html {
    let object =
      encode {
        name: "John Doe",
        aged: 37
      }

    let json =
      Json.prettyStringify(value: object, spaces: 2)

    <div>
      <pre>
        json
      </pre>
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`In the previous lesson we learned how to decode a JavaScript object and`,`
`,`now we learn how to encode a typed Mint object into a JavaScript object.`]),A('p',{},[`It is mostly used to generate a JSON string which we can send either`,`
`,`with a request or through websockets.`]),A('p',{},[`We can use the `,A('code',{},[`encode`]),` keyword for the purpose:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`encode`]),` { `,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"Bob"`]),` } `,A('span',{class:"comment"},[`// Object`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`encode`]),` `,A('span',{class:"variable"},[`someExpression`]),`() `,A('span',{class:"comment"},[`// Object`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`encode`]),` `,A('span',{class:"variable"},[`variable`]),` `,A('span',{class:"comment"},[`// Object`])])])]),A('hr',{},[]),A('p',{},[`For more information check out the `,A('a',{href:"/reference/javascript/encode"},[`reference page`]),`.`])])}),d=c;export default d;