import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:``,contents:`component Multiplier {
  // This is a required property because there is
  // no default value.
  property number : Number

  // This is a property where the type is inferred
  // from the default value (Number in this case).
  property by = 1

  fun render : Html {
    <div>
      Number.toString(number * by)
    </div>
  }
}

component Main {
  fun render : Html {
    <div>
      <Multiplier number={10}/>
      <Multiplier number={3} by={100}/>
    </div>
  }
}`})],contents:A(B,{},[A('p',{},[`If you want to pass some value to components which are different for`,`
`,`every instance then you can use `,A('strong',{},[`properties`]),`.`]),A('p',{},[`A property is defined inside a component using the `,A('code',{},[`property`]),` keyword:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`property`]),` name : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`"Joe"`])])])]),A('p',{},[`A property have three parts: `,A('strong',{},[`name`]),`, `,A('strong',{},[`type`]),` and `,A('strong',{},[`default value`]),`.`]),A('ul',{},[A('li',{},[A('p',{},[`The `,A('strong',{},[`name`]),` is always required, and it`,`'`,`s used to identify the`,`
`,`property.`])]),A('li',{},[A('p',{},[`The `,A('strong',{},[`type`]),` is optional if there is a `,A('strong',{},[`default value`]),`, otherwise`,`
`,`it`,`'`,`s required so we know which type the property is.`])]),A('li',{},[A('p',{},[`The `,A('strong',{},[`default value`]),` is optional if there is a `,A('strong',{},[`type`]),`, otherwise`,`
`,`it`,`'`,`s required so we know which type the property is.`])])]),A('p',{},[`Values for the properties are passed using attributes, just like with`,`
`,`HTML tags:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[`<`,A('span',{class:"type"},[`Greeter`]),` name=`,A('span',{class:"string"},[`"Joe"`]),`/>`])])]),A('p',{},[`If the values don`,`'`,`t match up with the properties, then you will get`,`
`,`nice error messages`,`!`]),A('p',{},[`You can play around with the example, changing the type or the`,`
`,`default value to see what errors you get.`])])}),d=c;export default d;