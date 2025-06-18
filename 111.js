import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Map`]),A('p',{},[A('code',{},[`Map(key, value)`]),` (associative array, symbol table, or dictionary) is a`,`
`,`data structure of key value pairs where the types of keys and values are`,`
`,`the same (respectively).`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// The type of the map is: Map(String, String)`]),`
`]),A('span',{class:"line"},[`{
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"key1"`]),` => `,A('span',{class:"string"},[`"value1"`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"string"},[`"key2"`]),` => `,A('span',{class:"string"},[`"value2"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`Unlike `,A('a',{href:"/reference/types/custom-types#composite-type"},[`records`]),`, keys can be of any type, for example here is an `,A('code',{},[`Array`]),`
`,`like map:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// The type of the map is: Map(Number, String)`]),`
`]),A('span',{class:"line"},[`{
`]),A('span',{class:"line"},[`  `,A('span',{class:"number"},[`1`]),` => `,A('span',{class:"string"},[`"value1"`]),`,
`]),A('span',{class:"line"},[`  `,A('span',{class:"number"},[`2`]),` => `,A('span',{class:"string"},[`"value2"`]),`
`]),A('span',{class:"line"},[`}`])])]),A('blockquote',{},[A('p',{},[`The map is implemented as an array of two element arrays `,A('code',{},[`[[key, value], ...]`]),`, so the lookup is linear O(n).`])]),A('h2',{},[`Type`]),A('p',{},[`The type of maps is inferred from their content, however you can define`,`
`,`the type directly with the `,A('code',{},[`of`]),` keyword. It is useful for defining the type`,`
`,`of empty maps:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`{}                     `,A('span',{class:"comment"},[`// Map(key, value)`]),`
`]),A('span',{class:"line"},[`{ `,A('span',{class:"string"},[`"key"`]),` => `,A('span',{class:"string"},[`"value"`]),` }   `,A('span',{class:"comment"},[`// Map(String, string)`]),`
`]),A('span',{class:"line"},[`{} of `,A('span',{class:"type"},[`Number`]),` => `,A('span',{class:"type"},[`String`]),` `,A('span',{class:"comment"},[`// Map(Number, String)`])])])]),A('h2',{},[`Accessing items`]),A('p',{},[`We can access a value in the map with the bracket access syntax:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`let`]),` `,A('span',{class:"variable"},[`map`]),` =
`]),A('span',{class:"line"},[`  {
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"key1"`]),` => `,A('span',{class:"string"},[`"value1"`]),`,
`]),A('span',{class:"line"},[`    `,A('span',{class:"string"},[`"key2"`]),` => `,A('span',{class:"string"},[`"value2"`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"variable"},[`map`]),`[`,A('span',{class:"string"},[`"key1"`]),`] `,A('span',{class:"comment"},[`// Maybe(String)`])])])]),A('p',{},[`It returns a `,A('code',{},[`Maybe(value)`]),` because there might not be a value for the`,`
`,`given key.`])]),b=a;export default b;