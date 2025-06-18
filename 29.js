import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=(()=>{const d=(()=>{const _0=[];const _1=[[A(`code`,{},[`|>`]),`0`,`Pipe`],[A(`code`,{},[`or`]),`0`,`Fallback`],[A(`code`,{},[`&&`]),`6`,`Logical AND`],[A(`code`,{},[`||`]),`5`,`Logical OR`],[A(`code`,{},[`!=`]),`10`,`Inequality`],[A(`code`,{},[`==`]),`10`,`Equality`],[A(`code`,{},[`<=`]),`11`,`Less than or equal to`],[A(`code`,{},[`<`]),`11`,`Less than`],[A(`code`,{},[`>=`]),`11`,`More than`],[A(`code`,{},[`>`]),`11`,`More than or equal to`],[A(`code`,{},[`-`]),`13`,`Subtraction`],[A(`code`,{},[`+`]),`13`,`Addition and string concatenation`],[A(`code`,{},[`*`]),`14`,`Multiplication`],[A(`code`,{},[`/`]),`14`,`Division`],[A(`code`,{},[`%`]),`14`,`Remainder`],[A(`code`,{},[`**`]),`15`,`Exponentiation`],[A(`code`,{},[`!`]),`16`,`Negation`]];let _i=-1;for(let e of _1){_i++;_0.push(A(`tr`,{},[A(`td`,{},[e[0]]),A(`td`,{},[e[1]]),A(`td`,{},[e[2]])]))};return _0})();const f=A(`table`,{},[A(`thead`,{},[A(`tr`,{},[A(`th`,{},[`Operator`]),A(`th`,{},[`Precedence`]),A(`th`,{},[`Description`])])]),A(`tbody`,{},[d])]);return a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : Html {
    <div>
      "Hello " + "World!" <br/>
      Number.toString(0 + 10) <br/>
      Bool.toString(true || false) <br/>
      Bool.toString(true && false) <br/>
      Bool.toString(0 != 1) <br/>
      Bool.toString(1 != 0)
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`Mint supports the following operators:`]),A('p',{},[``,f,``]),A('p',{},[`To learn more about them (what types they support, etc...) check out`,`
`,`the `,A('a',{href:"/reference/operators"},[`operators`]),` reference.`])])})})(),g=c;export default g;