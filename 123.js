import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Locale`]),A('p',{},[`The `,A('code',{},[`locale`]),` feature makes it easier to `,A('a',{href:"https://en.wikipedia.org/wiki/Internationalization_and_localization"},[`localize`]),`
`,`applications. It works by allowing you to define tokens and values for`,`
`,`languages and provides a literal to use as a reference to those tokens`,`
`,`which are replaced by the value of the current language.`]),A('p',{},[`The beauty of having language support for translations is that there are`,`
`,`checks at compile time for:`]),A('ul',{},[A('li',{},[`having the same tokens in all defined languages`]),A('li',{},[`having the same type for a token in all languages`]),A('li',{},[`checking if a literal has a token defined for it`]),A('li',{},[`not having the same token defined in multiple places`])]),A('h2',{},[`Defining translations`]),A('p',{},[`You can define translations (tokens and values in a tree) for a language`,`
`,`using the top level `,A('code',{},[`locale`]),` statement. The language is identified by`,`
`,A('a',{href:"https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes"},[`ISO 639-1`]),` code.`]),A('p',{},[`The keys are alphanumeric, and the values can be any Mint expression.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`locale`]),` en {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`ui`]),`: {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`buttons`]),`: {
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`ok`]),`: `,A('span',{class:"string"},[`"OK"`]),`,
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`edit`]),`: (`,A('span',{class:"variable"},[`title`]),` : `,A('span',{class:"type"},[`String`]),`) {
`]),A('span',{class:"line"},[`        `,A('span',{class:"string"},[`"Edit`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`title`]),A('span',{class:"string"},[`}"`]),`
`]),A('span',{class:"line"},[`      }
`]),A('span',{class:"line"},[`    }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`locale`]),` hu {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`ui`]),`: {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`buttons`]),`: {
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`ok`]),`: `,A('span',{class:"string"},[`"Rendben"`]),`,
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`edit`]),`: (`,A('span',{class:"variable"},[`title`]),` : `,A('span',{class:"type"},[`String`]),`) {
`]),A('span',{class:"line"},[`        `,A('span',{class:"string"},[`"#{`]),A('span',{class:"variable"},[`title`]),A('span',{class:"string"},[`} Szerkesztése"`]),`
`]),A('span',{class:"line"},[`      }
`]),A('span',{class:"line"},[`    }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Translations for a language can be split up and defined in multiple places.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`locale`]),` en {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`ui`]),`: {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`buttons`]),`: {
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`ok`]),`: `,A('span',{class:"string"},[`"OK"`]),`
`]),A('span',{class:"line"},[`    }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`locale`]),` en {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`ui`]),`: {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`buttons`]),`: {
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`edit`]),`: (`,A('span',{class:"variable"},[`title`]),` : `,A('span',{class:"type"},[`String`]),`) {
`]),A('span',{class:"line"},[`        `,A('span',{class:"string"},[`"Edit`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`title`]),A('span',{class:"string"},[`}"`]),`
`]),A('span',{class:"line"},[`      }
`]),A('span',{class:"line"},[`    }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Displaying translations`]),A('p',{},[`To display an already defined token, you can use the following syntax:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      <`,A('span',{class:"namespace"},[`button`]),`>:ui.button.ok</`,A('span',{class:"namespace"},[`button`]),`>
`]),A('span',{class:"line"},[`      <`,A('span',{class:"namespace"},[`button`]),`>:ui.button.edit(`,A('span',{class:"string"},[`"Title"`]),`)</`,A('span',{class:"namespace"},[`button`]),`>
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Managing the current locale`]),A('p',{},[A('code',{},[`Locale`]),` is the module for managing the current locale (which translations`,`
`,`are displayed for) at runtime:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// Sets the locale to "en" and returns \`true\` since we`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// have translations for the English language.`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Locale`]),`.`,A('span',{class:"variable"},[`set`]),`(`,A('span',{class:"string"},[`"en"`]),`)
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// Returns \`false\` since we don't have any translations`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// defined for the German language so it does nothing.`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Locale`]),`.`,A('span',{class:"variable"},[`set`]),`(`,A('span',{class:"string"},[`"de"`]),`)
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// Returns the current locale as a \`Maybe.Just(locale)\``]),`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// if there is any defined. Returns \`Maybe.Nothing\` if`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// there are no locales defined.`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Locale`]),`.`,A('span',{class:"variable"},[`get`]),`() `,A('span',{class:"comment"},[`// Maybe.Just("en")`])])])]),A('p',{},[`After setting a new locale, the application will show the new translations`,`
`,`automatically.`])]),b=a;export default b;