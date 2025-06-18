import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Global Components`]),A('p',{},[`Components can be declared as `,A('code',{},[`global`]),`, which means that they are globally`,`
`,`accessible and only rendered once alongside the `,A('code',{},[`Main`]),` component.`]),A('p',{},[`Global components are useful for some UI features that require one global`,`
`,`entity that other entities can interact with from anywhere, for example`,`
`,`notifications or modals.`]),A('p',{},[`Here is a basic implementation of a confirmation modal. The modal can be`,`
`,`used from anywhere to confirm an action.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`global`]),` `,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`ConfirmModal`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`callback`]),` : `,A('span',{class:"type"},[`Function`]),`(`,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`)) = `,A('span',{class:"type"},[`Promise`]),`.`,A('span',{class:"variable"},[`never`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`message`]),` : `,A('span',{class:"type"},[`String`]),` = `,A('span',{class:"string"},[`""`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`state`]),` `,A('span',{class:"variable"},[`open`]),` : `,A('span',{class:"type"},[`Bool`]),` = `,A('span',{class:"keyword"},[`false`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`base`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`background`]),`: rgba(0,0,0,0.8);
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`color`]),`: white;
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`position`]),`: fixed;
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`bottom`]),`: 0;
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`right`]),`: 0;
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`left`]),`: 0;
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`top`]),`: 0;
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`justify-content`]),`: center;
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`flex-direction`]),`: column;
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`align-items`]),`: center;
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`display`]),`: flex;
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` show (
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`callback`]),` : `,A('span',{class:"type"},[`Function`]),`(`,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`)),
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`message`]),` : `,A('span',{class:"type"},[`String`]),`
`]),A('span',{class:"line"},[`  ) : `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`next`]),`
`]),A('span',{class:"line"},[`      {
`]),A('span',{class:"line"},[`        `,A('span',{class:"variable"},[`callback`]),`: `,A('span',{class:"variable"},[`callback`]),`,
`]),A('span',{class:"line"},[`        `,A('span',{class:"variable"},[`message`]),`: `,A('span',{class:"variable"},[`message`]),`,
`]),A('span',{class:"line"},[`        `,A('span',{class:"variable"},[`open`]),`: `,A('span',{class:"keyword"},[`true`]),`
`]),A('span',{class:"line"},[`      }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` handleClick : `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"variable"},[`callback`]),`()
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`next`]),` { `,A('span',{class:"variable"},[`open`]),`: `,A('span',{class:"keyword"},[`false`]),` }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"variable"},[`open`]),` {
`]),A('span',{class:"line"},[`      <`,A('span',{class:"namespace"},[`div`]),`::base>
`]),A('span',{class:"line"},[`        `,A('span',{class:"variable"},[`message`]),`
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`        <`,A('span',{class:"namespace"},[`button`]),` onClick={`,A('span',{class:"variable"},[`handleClick`]),`}>
`]),A('span',{class:"line"},[`          `,A('span',{class:"string"},[`"OK"`]),`
`]),A('span',{class:"line"},[`        </`,A('span',{class:"namespace"},[`button`]),`>
`]),A('span',{class:"line"},[`      </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`    }
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[``,A('span',{class:"keyword"},[`component`]),` `,A('span',{class:"type"},[`Main`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` handleClick : `,A('span',{class:"type"},[`Promise`]),`(`,A('span',{class:"type"},[`Void`]),`) {
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`ConfirmModal`]),`.`,A('span',{class:"variable"},[`show`]),`(
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`callback`]),`: `,A('span',{class:"type"},[`Promise`]),`.`,A('span',{class:"variable"},[`never`]),`,
`]),A('span',{class:"line"},[`      `,A('span',{class:"variable"},[`message`]),`: `,A('span',{class:"string"},[`"Hello There!"`]),`)
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`fun`]),` render : `,A('span',{class:"type"},[`Html`]),` {
`]),A('span',{class:"line"},[`    <`,A('span',{class:"namespace"},[`div`]),` onClick={`,A('span',{class:"variable"},[`handleClick`]),`}>
`]),A('span',{class:"line"},[`      `,A('span',{class:"string"},[`"Click ME!"`]),`
`]),A('span',{class:"line"},[`    </`,A('span',{class:"namespace"},[`div`]),`>
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])])]),b=a;export default b;