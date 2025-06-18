import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`locale en {
  label: "Click to change the locale!",
  greeting: "Hello World!"
}

locale hu {
  label: "Kattintson a nyelv megváltoztatásához!",
  greeting: "Hello Világ!"
}

component Main {
  fun changeLocale {
    case Locale.get() or "en" {
      "hu" => Locale.set("en")
      => Locale.set("hu")
    }
  }

  fun render : Html {
    <div>
      :greeting

      <button onClick={changeLocale}>
        :label
      </button>
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`Bigger applications allow users to change the language of the user`,`
`,`interface, which is called `,A('a',{href:"https://en.wikipedia.org/wiki/Internationalization_and_localization"},[`localization`]),`. In Mint, you can do that`,`
`,`with the `,A('code',{},[`locale`]),` feature.`]),A('p',{},[`You can define translations for a language like this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`locale`]),` en {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`greeting`]),`: `,A('span',{class:"string"},[`"Hello World!"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`With the above we defined a translation with a name we can refer it to`,`
`,`later on like this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`:greeting `,A('span',{class:"comment"},[`// This will display text: Hello World!`])])])]),A('p',{},[`The `,A('code',{},[`Locale`]),` module is for getting / setting the locale at runtime:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// \`Maybe(String)\` returns the current locale`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Locale`]),`.`,A('span',{class:"variable"},[`get`]),`()
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// Sets the locale which will cause a re-render`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Locale`]),`.`,A('span',{class:"variable"},[`set`]),`(`,A('span',{class:"string"},[`"hu"`]),`)`])])])])}),d=c;export default d;