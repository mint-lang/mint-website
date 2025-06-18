import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : Html {
    <div>
      <div style={{"color" => "red"}}>
        "I am red!"
      </div>

      <div style="color: purple;">
        "I am purple!"
      </div>
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`You can define CSS for an HTML tag using inline styles.`]),A('p',{},[`Inline styles can be defined using the `,A('code',{},[`style`]),` attribute. It takes`,`
`,`either CSS string or a `,A('code',{},[`Map(String, String)`]),` of CSS values:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`div`]),` style={{`,A('span',{class:"string"},[`"color"`]),` => `,A('span',{class:"string"},[`"red"`]),`}}>
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"I am red!"`]),`
`]),A('span',{class:"line"},[`  </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  <`,A('span',{class:"namespace"},[`div`]),` style=`,A('span',{class:"string"},[`"color: purple;"`]),`>
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"I am purple!"`]),`
`]),A('span',{class:"line"},[`  </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`</`,A('span',{class:"namespace"},[`div`]),`>`])])])])}),d=c;export default d;