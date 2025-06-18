import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Environment Variables`]),A('p',{},[`When building web applications, usually the same application needs to work`,`
`,`in different environments (development, staging, production). There are`,`
`,`some `,A('a',{href:"https://en.wikipedia.org/wiki/Environment_variable"},[`variables`]),` like API endpoints that differ depending on the`,`
`,`environment.`]),A('p',{},[`Mint offers a simple feature for managing these variables. You can create`,`
`,`different files `,A('code',{},[`.env`]),` and `,A('code',{},[`.env.production`]),` which have contents like this:`]),A('pre',{},[A('code',{},[A('span',{class:"line"},[`ENDPOINT=http://localhost:3001`]),A('span',{class:"line"},[`WSENDPOINT=ws://localhost:3001`])])]),A('p',{},[`Then in Mint code you can inline them:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      @ENDPOINT
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Specifying .env file`]),A('p',{},[`Some commands in the CLI has a flag `,A('code',{},[`-e`]),` or `,A('code',{},[`--env`]),` which takes the path`,`
`,`to the `,A('code',{},[`.env`]),` file:`]),A('pre',{},[A('code',{class:"language-bash"},[A('span',{class:"line"},[`mint start --env .env.production`])])])]),b=a;export default b;