import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Main {
  fun greet (value : Maybe(Tuple(String, Maybe(String)))) : String {
    case value {
      Just({name, Just(greeting)}) => "#{greeting} #{name}!"
      Just({name, Nothing}) => "Hello #{name}!"
      =>"Hello World!"
    }
  }

  fun render : Html {
    <div>
      <div>greet(Maybe.Just({"Joe", Maybe.Just("Howdy")}))</div>
      <div>greet(Maybe.Just({"Joe", Maybe.Nothing}))</div>
      <div>greet(Maybe.Nothing)</div>
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`In the previous lesson we matched on simple values, which could have`,`
`,`been written as a bunch of `,A('strong',{},[`ifs`]),` and `,A('strong',{},[`elses`]),`, however in the real`,`
`,`world we have complex data structures and getting value out of those`,`
`,`can be hard.`]),A('p',{},[`This is where `,A('strong',{},[`pattern matching`]),` comes in. It`,`'`,`s a neat way of getting`,`
`,`data out of a complex structure.`]),A('p',{},[`A `,A('strong',{},[`pattern`]),` looks like another value but instead only having values,`,`
`,`it can have variables which will be assigned the corresponding value:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// We have this value with a nested \`String\` value`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Maybe`]),`.`,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"string"},[`"Hello"`]),`)
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// This is a pattern that can match that structure`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"type"},[`Maybe`]),`.`,A('span',{class:"type"},[`Just`]),`(`,A('span',{class:"variable"},[`value`]),`)`])])]),A('p',{},[`If we `,A('strong',{},[`destructure`]),` that `,A('strong',{},[`pattern`]),` against the data, the `,A('code',{},[`value`]),`
`,`variable will be assigned the `,A('code',{},[`"Hello"`]),` value.`]),A('p',{},[`We can do this in multiple ways, one of which is the same `,A('code',{},[`case`]),`
`,`statement we had before. In the example, there are three `,A('strong',{},[`branches`]),`.`,`
`,`The value of the first branch matching the pattern is returned.`]),A('p',{},[`If a branch doesn`,`'`,`t have a pattern (or value), like the last branch`,`
`,`in the example, it covers all other possibilities.`])])}),d=c;export default d;