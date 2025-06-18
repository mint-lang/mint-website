import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`component Main {
  state userLoggedIn : Bool = false

  fun toggle : Promise(Void) {
    next { userLoggedIn: !userLoggedIn }
  }

  fun render : Html {
    <div>
      if userLoggedIn {
        <button onClick={toggle}>
          "Log out"
        </button>
      } else {
        <button onClick={toggle}>
          "Log in"
        </button>
      }
    </div>
  }
}`,contents:`component Main {
  state userLoggedIn : Bool = false

  fun toggle : Promise(Void) {
    next { userLoggedIn: !userLoggedIn }
  }

  fun render : Html {
    <div>
      <button onClick={toggle}>
        "Log out"
      </button>

      <button onClick={toggle}>
        "Log in"
      </button>
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`As most other languages, Mint has a construct to return different`,`
`,`values based on some condition. It looks like this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"variable"},[`condition`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"true"`]),`
`]),A('span',{class:"line"},[`} `,A('span',{class:"keyword"},[`else`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"false"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Unlike in some languages, here `,A('code',{},[`if`]),` is an expression and not a`,`
`,`statement, and because of this both branches need to return something`,`
`,`and those need to be of the same type.`]),A('p',{},[`With this information, you should be able to update the code to display the`,`
`,`correct button based on the `,A('code',{},[`userLoggedIn`]),` state.`])])}),d=c;export default d;