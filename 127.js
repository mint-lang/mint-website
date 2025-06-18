import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Providers`]),A('blockquote',{},[A('p',{},[`Providers are an advanced topic, they can be tricky to implement`,`
`,`correctly. If you are unsure, reach out on Discord.`])]),A('p',{},[`Providers are entities which components can use as sources of effects (and`,`
`,`data). By effect, we mean events that happen outside components, for`,`
`,`example when the size of the window changes or when a key is pressed.`]),A('p',{},[`A provider can have `,A('a',{href:"/reference/state-management"},[`states`]),`, `,A('a',{href:"/reference/functions"},[`functions`]),`, `,A('a',{href:"/reference/components/computed-properties"},[`computed properties`]),` and`,`
`,A('a',{href:"/reference/constants"},[`constants`]),`.`]),A('p',{},[`Here you can see a commented simple example - a provider which announces`,`
`,`when a component subscribes to it or unsubscribes from it:`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"comment"},[`// We need to define a custom type for the subscriptions.`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`type`]),` `,A('span',{class:"type"},[`Greeter.Subscription`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"variable"},[`notify`]),` : `,A('span',{class:"type"},[`Function`]),`(`,A('span',{class:"type"},[`String`]),`)
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"comment"},[`// We define the provider to use the subscription type above.`]),`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`provider`]),` `,A('span',{class:"type"},[`Greeter`]),` : `,A('span',{class:"type"},[`Greeter.Subscription`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` update {
`]),A('span',{class:"line"},[`    `,A('span',{class:"comment"},[`// We notify every subscription when it changes.`]),`
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`for`]),` `,A('span',{class:"variable"},[`subscription`]),` `,A('span',{class:"keyword"},[`of`]),` `,A('span',{class:"variable"},[`subscriptions`]),` {
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`subscription`]),`.`,A('span',{class:"variable"},[`notify`]),`()
`]),A('span',{class:"line"},[`    }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Subscriber`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`subscribed`]),` : `,A('span',{class:"type"},[`Bool`]),` = `,A('span',{class:"keyword"},[`false`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// The component uses the provider using a subscription,`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// but only if the \`subscribed\` state is true.`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`use`]),` `,A('span',{class:"type"},[`Greeter`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`notify`]),`: () { `,A('span',{class:"type"},[`Debug`]),`.`,A('span',{class:"variable"},[`log`]),`(`,A('span',{class:"string"},[`"I was notified!"`]),`) }
`]),A('span',{class:"line"},[`  } `,A('span',{class:"keyword"},[`when`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`subscribed`]),`
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`button`]),` onClick={() { `,A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`subscribed`]),`: !`,A('span',{class:"variable"},[`subscribed`]),` } }}>
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"Toggle Subscription"`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`      `,A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"variable"},[`subscribed`]),` {
`]),A('span',{class:"line"},[`        `,A('span',{class:"string"},[`" (ON)"`]),`
`]),A('span',{class:"line"},[`      } `,A('span',{class:"keyword"},[`else`]),` {
`]),A('span',{class:"line"},[`        `,A('span',{class:"string"},[`" (OFF)"`]),`
`]),A('span',{class:"line"},[`      }
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`button`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`      <`,A('span',{class:"type"},[`Subscriber`]),`/>
`]),A('span',{class:"line"},[`      <`,A('span',{class:"type"},[`Subscriber`]),`/>
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`To learn more, check out the `,A('a',{href:"https://github.com/mint-lang/mint/tree/master/core/source/Provider"},[`built-in providers`]),` of the standard library.`]),A('h2',{},[`Update`]),A('p',{},[`Providers `,A('strong',{},[`should have`]),` an `,A('code',{},[`update`]),` function which is called whenever a`,`
`,`component subscribes to or unsubscribes from the provider.`]),A('p',{},[`This should be used to attach / detach event listeners based on the`,`
`,`subscribers (for example, there is no need to listen on the resize event`,`
`,`on the window if nothing uses the provider).`]),A('h3',{},[`Caveats`]),A('p',{},[A('strong',{},[`Don`,`'`,`t call functions of subscribers`]),` in the update function because`,`
`,`it can lead to infinite recursion (a subscription triggers an update which`,`
`,`in turn calls the subscriber which triggers another update and so on...).`]),A('h2',{},[`Subscriptions`]),A('p',{},[`A provider has a hidden (as in not defined by the user) `,A('code',{},[`subscriptions`]),`
`,`state which have this type: `,A('code',{},[`Array(a)`]),` where `,A('code',{},[`a`]),` is the type of the`,`
`,`subscription. This contains all the current subscribers to the provider.`])]),b=a;export default b;