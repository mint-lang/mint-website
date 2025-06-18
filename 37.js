import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`/* Represents the status of a request. */
type Status(error, value) {
  Errored(error)
  Loaded(value)
  Loading
  Idle
}

component Main {
  fun render : Html {
    let user =
      Status.Errored("YO!")

    <div>
      case user {
        Errored(error) => "An error happened: #{error}!"
        Loaded(value) => value
        Loading => "Loading..."
        Idle => ""
      }
    </div>
  }
}`,contents:`/* Represents the status of a request. */
type Status(error, value) {
  Errored(error)
  Loaded(value)
  Loading
  Idle
}

component Main {
  fun render : Html {
    let user =
      Status.Loaded("Joe")

    <div>
      case user {
        Errored(error) => "An error happened: #{error}!"
        Loaded(value) => value
        Loading => "Loading..."
        Idle => ""
      }
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`Custom types (like we created in the previous lesson) can be generic,`,`
`,`meaning that you can specify relationships using type variables.`]),A('p',{},[`An example for this is the `,A('code',{},[`Result`]),` type:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`type`]),` `,A('span',{class:"type"},[`Result`]),`(`,A('span',{class:"type_parameter"},[`error`]),`, `,A('span',{class:"type_parameter"},[`value`]),`) {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Err`]),`(`,A('span',{class:"type_parameter"},[`error`]),`)
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Ok`]),`(`,A('span',{class:"type_parameter"},[`value`]),`)
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`It`,`'`,`s generic because it can be used with other types to represent`,`
`,`different outcomes:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// This is a result of converting a number`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Result`]),`(`,A('span',{class:"type"},[`String`]),`, `,A('span',{class:"type"},[`Number`]),`)
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// This is a result of finding a DOM element`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Result`]),`(`,A('span',{class:"type"},[`String`]),`, `,A('span',{class:"type"},[`Dom`]),`.`,A('span',{class:"type"},[`Element`]),`)`])])]),A('p',{},[`You can play around with the example, changing the option to see how it`,`
`,`reflects the displayed text.`])])}),d=c;export default d;