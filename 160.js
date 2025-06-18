import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Decode`]),A('p',{},[`In order to process data from JavaScript, you must convert them to a Mint`,`
`,`values. The `,A('code',{},[`decode`]),` expression helps you to do just that.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`decode`]),` `,A('span',{class:"variable"},[`object`]),` `,A('span',{class:"keyword"},[`as`]),` `,A('span',{class:"type"},[`String`])])])]),A('p',{},[`It tries to convert the untyped value (`,A('code',{},[`Object`]),`) to a typed value. It`,`
`,`returns a `,A('code',{},[`Result(Object.Error, value)`]),` with the result.`]),A('p',{},[`You can decode JavaScript values into Mint `,A('strong',{},[`primitive values`]),`, (`,A('code',{},[`String`]),`,`,`
`,A('code',{},[`Bool`]),`, `,A('code',{},[`Number`]),`, `,A('code',{},[`Time`]),`) `,A('strong',{},[`simple structures`]),` (`,A('code',{},[`Maybe(a)`]),`, `,A('code',{},[`Set(a)`]),`,`,`
`,A('code',{},[`Map(a,b)`]),`, `,A('code',{},[`Array(a)`]),`) and `,A('a',{href:"/reference/types/custom-types"},[`custom types`]),`, which only have the`,`
`,`previously mentioned values.`]),A('blockquote',{},[A('p',{},[`If you try to decode a type which is not supported or try to decode`,`
`,`something that is not an `,A('code',{},[`Object`]),`, you will get a nice error message.`])]),A('p',{},[`An example of decoding a composite type:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`type`]),` `,A('span',{class:"type"},[`User`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`age`]),` : `,A('span',{class:"type"},[`Number`]),`
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`String`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`jsonString`]),` =
`]),A('span',{class:"line"},[`      <<~JSON`,A('span',{class:"string"},[``])]),A('span',{class:"line"},[A('span',{class:"string"},[`      {`])]),A('span',{class:"line"},[A('span',{class:"string"},[`        "name": "John",`])]),A('span',{class:"line"},[A('span',{class:"string"},[`        "age": 30`])]),A('span',{class:"line"},[A('span',{class:"string"},[`      }`])]),A('span',{class:"line"},[A('span',{class:"string"},[`      `]),`JSON
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"type"},[`Ok`]),`(`,A('span',{class:"variable"},[`object`]),`) =
`]),A('span',{class:"line"},[`      `,A('span',{class:"type"},[`Json`]),`.`,A('span',{class:"variable"},[`parse`]),`(`,A('span',{class:"variable"},[`jsonString`]),`) `,A('span',{class:"keyword"},[`or`]),` `,A('span',{class:"keyword"},[`return`]),` `,A('span',{class:"string"},[`"Could not parse the JSON string!"`]),A('span',{class:"string"},[`"Could not parse the JSON string!"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"type"},[`Ok`]),`(`,A('span',{class:"variable"},[`user`]),`) =
`]),A('span',{class:"line"},[`      `,A('span',{class:"keyword"},[`decode`]),` `,A('span',{class:"variable"},[`object`]),` `,A('span',{class:"keyword"},[`as`]),` `,A('span',{class:"type"},[`User`]),` `,A('span',{class:"keyword"},[`or`]),` `,A('span',{class:"keyword"},[`return`]),` `,A('span',{class:"string"},[`"Can't decode User"`]),A('span',{class:"string"},[`"Can't decode User"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`user`]),`.`,A('span',{class:"variable"},[`name`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Algebraic Data Types`]),A('p',{},[`ADTs can be decoded as well but they must be in a specific format:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`type`]),` `,A('span',{class:"type"},[`User`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`LoggedIn`]),`(`,A('span',{class:"variable"},[`name`]),` : `,A('span',{class:"type"},[`String`]),`, `,A('span',{class:"variable"},[`age`]),` : `,A('span',{class:"type"},[`Number`]),`)
`]),A('span',{class:"line"},[`  `,A('span',{class:"type"},[`Guest`]),`
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`User`]),`.`,A('span',{class:"type"},[`LoggedIn`]),`(`,A('span',{class:"variable"},[`name`]),`: `,A('span',{class:"string"},[`"Joe"`]),`, `,A('span',{class:"variable"},[`age`]),`: `,A('span',{class:"number"},[`42`]),`)
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`User`]),`.`,A('span',{class:"type"},[`Guest`])])])]),A('p',{},[`Values of these should be in this format:`]),A('pre',{},[A('code',{class:"language-plain"},[A('span',{class:"line"},[`{`]),A('span',{class:"line"},[`  type: "User.LoggedIn",`]),A('span',{class:"line"},[`  value: ["Joe", 42]`]),A('span',{class:"line"},[`}`]),A('span',{class:"line"},[``]),A('span',{class:"line"},[`{`]),A('span',{class:"line"},[`  type: "User.Guest"`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`The `,A('code',{},[`type`]),` field tells us which variant the value is and the `,A('code',{},[`value`]),` field`,`
`,`contains the values in order they are defined in.`]),A('h2',{},[`Decoding not supported keys`]),A('p',{},[`There are times when we want to decode an object containing a key whose`,`
`,`name is not a valid key, for example, `,A('code',{},[`tag_list`]),`. In this case, the `,A('code',{},[`using`]),`
`,`keyword can be used to specify the mapping for the key.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`type`]),` `,A('span',{class:"type"},[`Post`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`tagList`]),`: `,A('span',{class:"type"},[`Array`]),`(`,A('span',{class:"type"},[`String`]),`) `,A('span',{class:"keyword"},[`using`]),` `,A('span',{class:"string"},[`"tag_list"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`When decoding an object as a `,A('code',{},[`Post`]),` it will look for the `,A('code',{},[`tag_list`]),` field`,`
`,`instead of the `,A('code',{},[`tagList`]),` field in the object, so this JavaScript Object:`]),A('pre',{},[A('code',{},[A('span',{class:"line"},[`{`]),A('span',{class:"line"},[`  tag_list: ["a", "b"]`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`will decode into this record:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`{
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`tagList`]),`: [`,A('span',{class:"string"},[`"a"`]),`, `,A('span',{class:"string"},[`"b"`]),`]
`]),A('span',{class:"line"},[`}`])])])]),b=a;export default b;