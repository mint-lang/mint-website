import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Properties`]),A('p',{},[`Properties can be defined for components with the `,A('code',{},[`property`]),` keyword:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Test`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`property`]),` size : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`"small"`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`property`]),` color : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`"red"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`color`]),`
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`size`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"comment"},[`// Default property values`]),`
`]),A('span',{class:"line"},[`      <`,A('span',{class:"type"},[`Test`]),`/>
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`      `,A('span',{class:"comment"},[`// Passed property values`]),`
`]),A('span',{class:"line"},[`      <`,A('span',{class:"type"},[`Test`]),` size=`,A('span',{class:"string"},[`"medium"`]),` color=`,A('span',{class:"string"},[`"blue"`]),`/>
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`The name of the property must start with a lowercase letter and can only`,`
`,`contain letters and numbers, and they are referenced by name within the`,`
`,`component.`]),A('blockquote',{},[A('p',{},[`Properties must be fully defined (meaning types in it cannot have any`,`
`,`type variables).`])]),A('h2',{},[`Required properties`]),A('p',{},[`A property can be `,A('strong',{},[`required`]),` by leaving out the default value:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`User`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`property`]),` name : `,A('span',{class:"type"},[`String`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"User:`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}"`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"comment"},[`// Displays a compiler error`]),`
`]),A('span',{class:"line"},[`      <`,A('span',{class:"type"},[`User`]),`/>
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`      <`,A('span',{class:"type"},[`User`]),` name=`,A('span',{class:"string"},[`"Joe"`]),`/>
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`This means when using this component, this property must be set, if it`,`'`,`s not`,`
`,`then the type checker will show you an error.`]),A('h2',{},[`Optional type`]),A('p',{},[`The `,A('strong',{},[`type annotation`]),` can be left out if a default value is set:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`User`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`property`]),` name = `,A('span',{class:"string"},[`"Joe"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"User:`]),A('span',{class:"string"},[` #{`]),A('span',{class:"variable"},[`name`]),A('span',{class:"string"},[`}"`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Passing properties`]),A('p',{},[`Property values are passed to the component when it is rendered:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"type"},[`Test`]),` color=`,A('span',{class:"string"},[`"blue"`]),` size=`,A('span',{class:"string"},[`"big"`]),`/>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('blockquote',{},[A('p',{},[`All properties are type checked. Attempting to set an incompatible value`,`
`,`will show an error.`])]),A('p',{},[`There are some examples of passing different things:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"type"},[`Test`]),`
`]),A('span',{class:"line"},[`      items=[`,A('span',{class:"variable"},[`item1`]),`, `,A('span',{class:"variable"},[`item2`]),`]
`]),A('span',{class:"line"},[`      color={`,A('span',{class:"variable"},[`variable`]),`}
`]),A('span',{class:"line"},[`      size=`,A('span',{class:"string"},[`"10px"`]),`/>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('h2',{},[`Children`]),A('p',{},[`The `,A('code',{},[`children`]),` property is special and for now it can only have the type`,`
`,A('code',{},[`Array(Html)`]),`. It is used to access the children which are passed to the`,`
`,`component:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Container`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`property`]),` children : `,A('span',{class:"type"},[`Array`]),`(`,A('span',{class:"type"},[`Html`]),`) = []
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`children`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"type"},[`Container`]),`>
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"I am a child node!"`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"type"},[`Container`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('blockquote',{},[A('p',{},[`Currently, the property must be defined, but in a future release it will`,`
`,`be optional.`])])]),b=a;export default b;