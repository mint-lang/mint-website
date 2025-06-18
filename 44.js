import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun render : Html {
    <>
      <pre>
        <<-TEXT
        This is a here document, can be multiple lines,
        leading white space preserved.
        TEXT
      </pre>

      <hr/>

      <pre>
        <<~TEXT
        This is a here document, can be multiple lines,
        leading white space removed.
        TEXT
      </pre>

      <<#MARKDOWN
      # Heading

      This is a paragraph.

      * a list item
      * a list item
      MARKDOWN
    </>
  }
}`})],contents:A(B,{},[A('p',{},[A('a',{href:"https://en.wikipedia.org/wiki/Here_document"},[`Here documents`]),` can be used for writing blocks of text or Markdown,`,`
`,`and it looks like this:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<<-IDENTIFIER`,A('span',{class:"string"},[``])]),A('span',{class:"line"},[A('span',{class:"string"},[`  Some Text...`])]),A('span',{class:"line"},[A('span',{class:"string"},[``]),`IDENTIFIER`])])]),A('p',{},[`Everything inside the `,A('code',{},[`IDENTIFIER`]),` is part of the document so it can be`,`
`,`used to preserve whitespace like this `,A('code',{},[`Some Text...`]),`, but sometimes`,`
`,`it`,`'`,`s necessary to remove the leading whitespace to do that you can`,`
`,`write this instead:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<<~IDENTIFIER`,A('span',{class:"string"},[``])]),A('span',{class:"line"},[A('span',{class:"string"},[`  Some Text...`])]),A('span',{class:"line"},[A('span',{class:"string"},[``]),`IDENTIFIER`])])]),A('p',{},[`Which will result in this `,A('code',{},[`Some Text...`]),`. You can even pre-compile`,`
`,`Markdown (as `,A('code',{},[`Html`]),`):`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<<#MARKDOWN`,A('span',{class:"string"},[``])]),A('span',{class:"line"},[A('span',{class:"string"},[`# This is a heading...`])]),A('span',{class:"line"},[A('span',{class:"string"},[``]),`MARKDOWN`])])]),A('p',{},[`Check out the `,A('a',{href:"/reference/here-documents"},[`reference page`]),` to learn more.`])])}),d=c;export default d;