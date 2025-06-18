import {createElement as A,fragment as B} from "./runtime.js";export const a=A(B,{},[A('h1',{},[`Control Flow`]),A('p',{},[`Styles can contain `,A('a',{href:"/reference/control-flow/if"},[`if expressions`]),` and `,A('a',{href:"/reference/control-flow/case"},[`case expressions`]),`, which allows`,`
`,`changing the value of one or many CSS properties based on some condition.`]),A('pre',{},[A('code',{class:"language-mint"},[A('span',{class:"line"},[A('span',{class:"keyword"},[`style`]),` `,A('span',{class:"variable"},[`root`]),` {
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// Apply these properties when the condition is true.`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`if`]),` `,A('span',{class:"variable"},[`loading`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`pointer-events`]),`: none;
`]),A('span',{class:"line"},[`    `,A('span',{class:"property"},[`opacity`]),`: 0.5;
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`  `,A('span',{class:"comment"},[`// Apply properties depending on the subject.`]),`
`]),A('span',{class:"line"},[`  `,A('span',{class:"keyword"},[`case`]),` `,A('span',{class:"variable"},[`status`]),` {
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Ok`]),` =>
`]),A('span',{class:"line"},[`      `,A('span',{class:"property"},[`color`]),`: #333;
`]),A('span',{class:"line"},[`
`]),A('span',{class:"line"},[`    `,A('span',{class:"type"},[`Err`]),` =>
`]),A('span',{class:"line"},[`      `,A('span',{class:"property"},[`border`]),`: 1px solid red;
`]),A('span',{class:"line"},[`      `,A('span',{class:"property"},[`color`]),`: red;
`]),A('span',{class:"line"},[`  }
`]),A('span',{class:"line"},[`}`])])]),A('p',{},[`The body of the branches are one or many CSS Properties instead of normal`,`
`,`expressions, sub selectors and at-rules cannot be nested in them and for`,`
`,`if expressions the `,A('code',{},[`else`]),` branch is optional.`])]),b=a;export default b;