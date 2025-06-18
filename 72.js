import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : Html {
    let asset =
      @asset(data.txt)

    <div>
      <a href={asset} download="data.txt">
        "Download Asset"
      </a>
      <br/>
      <i>
        "The path of the asset is: #{asset}"
      </i>
    </div>
  }
}`}),b({path:`data.txt`,solution:``,contents:`Hello World!`})],contents:A(B,{},[A('p',{},[`The `,A('code',{},[`@asset`]),` directive allows you to reference a file. Basically, it`,`
`,`returns the path to the file, but more importantly it tells the`,`
`,`compiler that an asset is used so it can be copied with the`,`
`,`resulting bundle.`]),A('p',{},[`The referenced file is `,A('strong',{},[`relative to the file the directive is defined`,`
`,`in`]),` or `,A('strong',{},[`relative to the root of the project`]),`.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// Main.mint`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`@asset`]),`(data.txt)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`In the example above, the `,A('code',{},[`data.txt`]),` is in the same directory as the`,`
`,A('code',{},[`Main.mint`]),` file.`]),A('hr',{},[]),A('p',{},[`For more information, check out the `,A('a',{href:"/reference/directives/asset"},[`reference page`]),`.`])])}),d=c;export default d;