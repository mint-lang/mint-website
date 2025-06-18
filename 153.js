import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Asset Directive`]),A('p',{},[`The `,A('code',{},[`@asset`]),` directive allows you to `,A('strong',{},[`reference`]),` a file relative to the`,`
`,`current file (or from the root of the project). Basically, it returns the`,`
`,`path to the file, but more importantly it tells the compiler that an asset`,`
`,`is used. During the build process, the assets are bundled along with the`,`
`,`generated files.`]),A('p',{},[`For example, given this file structure:`]),A('pre',{},[A('code',{},[A('span',{class:"line"},[`my-app`]),A('span',{class:"line"},[`├── images`]),A('span',{class:"line"},[`│   └── some-image.jpg`]),A('span',{class:"line"},[`├── source`]),A('span',{class:"line"},[`│   └── Main.mint`]),A('span',{class:"line"},[`└── mint.json`])])]),A('p',{},[`This component references the `,A('code',{},[`some-image.jpg`]),` from the `,A('code',{},[`images`]),` folder:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      <`,A('span',{class:"namespace"},[`img`]),` src={`,A('span',{class:"keyword"},[`@asset`]),`(../images/some-image.jpg)}/>
`]),A('span',{class:"line"},[`      <`,A('span',{class:"namespace"},[`img`]),` src={`,A('span',{class:"keyword"},[`@asset`]),`(/images/some-image.jpg)}/>
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`During the build process, the asset will be put into the `,A('code',{},[`__mint__`]),`
`,`directory and the image tag will point to that image.`]),A('h2',{},[`Hash`]),A('p',{},[`All referenced assets have a hash appended to its final filename which is`,`
`,`generated (as an MD5 hash) from the contents of the file (build) or from`,`
`,`the absolute path of the file (development).`]),A('p',{},[`For example the `,A('code',{},[`data.txt`]),` with the content:`]),A('pre',{},[A('code',{},[A('span',{class:"line"},[`Hello World!`])])]),A('p',{},[`Will generate this file name:`]),A('pre',{},[A('code',{},[A('span',{class:"line"},[`data_ed076287532e86365e841e92bfc50d8c.txt`])])]),A('p',{},[`This is mainly for making sure that obsolete content is not cached by the`,`
`,`browser: if a file has new content, the hash is different and the browser`,`
`,`needs to load the new file.`])]),b=a;export default b;