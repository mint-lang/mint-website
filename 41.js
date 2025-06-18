import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`module Greeter {
  const NAME = "World"
}

component Main {
  fun render : Html {
    <div>"Hello #{Greeter.NAME}!"</div>
  }
}`,contents:`component Main {
  const NAME = "World"

  fun render : Html {
    <div>"Hello #{NAME}!"</div>
  }
}`})],contents:A(B,{},[A('p',{},[`Constants are values that cannot change while the application is`,`
`,`running, they can be defined for top level entities like `,A('code',{},[`module`]),`,`,`
`,A('code',{},[`component`]),`, `,A('code',{},[`suite`]),`, `,A('code',{},[`provider`]),` or `,A('code',{},[`store`]),`.`]),A('p',{},[`They can only contain uppercase letters and underscores. Use the`,`
`,A('code',{},[`const`]),` keyword to define them:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`const`]),` `,A('span',{class:"type"},[`PI`]),` = `,A('span',{class:"number"},[`3.14159265359`])])])]),A('p',{},[`They can be accessed using their name, in the same scope they are`,`
`,`defined in:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"type"},[`PI`]),` `,A('span',{class:"operator"},[`*`]),` `,A('span',{class:"number"},[`2`]),` `,A('span',{class:"comment"},[`// 6.28318530718`])])])]),A('p',{},[`To access them outside the scope they are defined in, you can use`,`
`,`the dot `,A('code',{},[`.`]),` syntax:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`module`]),` `,A('span',{class:"type"},[`Math`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`const`]),` `,A('span',{class:"type"},[`PI`]),` = `,A('span',{class:"number"},[`3.14159265359`]),`
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Math`]),`.`,A('span',{class:"type"},[`PI`]),` `,A('span',{class:"operator"},[`*`]),` `,A('span',{class:"number"},[`2`]),` `,A('span',{class:"comment"},[`// 6.28318530718`])])])]),A('p',{},[`As an exercise, you can move the `,A('code',{},[`NAME`]),` constant into a module named`,`
`,A('code',{},[`Greeter`]),`!`])])}),d=c;export default d;