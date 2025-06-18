import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`component Main {
  fun render : Html {
    let src =
      "https://media.giphy.com/media/5kq0GCjHA8Rwc/giphy.gif"

    let name =
      "Rick Astley"

    <img src={src} alt="#{name} dances."/>
  }
}`,contents:`component Main {
  fun render : Html {
    let src =
      "https://media.giphy.com/media/5kq0GCjHA8Rwc/giphy.gif"

    <img/>
  }
}`})],contents:A(B,{},[A('p',{},[`You can use curly braces to control element attributes and component`,`
`,`properties.`]),A('p',{},[`Our image is missing a `,A('code',{},[`src`]),` attribute — let`,`'`,`s add one:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`img`]),` src={`,A('span',{class:"variable"},[`src`]),`}/>`])])]),A('p',{},[`When building web apps, it`,`'`,`s important to make sure that they`,`'`,`re`,`
`,`accessible to the broadest possible user base, including people with`,`
`,`(for example) impaired vision or motion, or people without powerful`,`
`,`hardware or good internet connections.`]),A('p',{},[`To that end, we should add the `,A('code',{},[`alt`]),` attribute that describes the image`,`
`,`for people using screen readers, or people with slow or flaky internet`,`
`,`connections that can`,`'`,`t download the image. Let`,`'`,`s add it:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"namespace"},[`img`]),` src={`,A('span',{class:"variable"},[`src`]),`} alt=`,A('span',{class:"string"},[`"A man dances."`]),`/>`])])]),A('p',{},[`We can use interpolation inside attributes. Try changing it to:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"string"},[`"#{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`} dances."`])])])]),A('p',{},[`— remember to declare a name variable.`])])}),d=c;export default d;