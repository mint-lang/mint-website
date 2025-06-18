import {createElement as A,fragment as B} from "./runtime.js";import {a as b,c as a} from "./index.js";export const c=a({files:[b({path:`Main.mint`,solution:`component Main {
  fun render : String {
    let array =
      []

    case array {
      [] => "1"              /* Empty array  */
      ["Joe"] => "2"         /* Array with only one specific element */
      [a] => "3"             /* Array with only one element */
      [a, b] => "4"          /* Array with only two elements */
      [head, ...tail] => "5" /* Array at one element (tail can be empty) */
    }
  }
}`,contents:`component Main {
  fun render : String {
    let array =
      ["Joe"]

    case array {
      [] => "1"              /* Empty array  */
      ["Joe"] => "2"         /* Array with only one specific element */
      [a] => "3"             /* Array with only one element */
      [a, b] => "4"          /* Array with only two elements */
      [head, ...tail] => "5" /* Array at one element (tail can be empty) */
    }
  }
}`})],contents:A(B,{},[A('p',{},[`You can pattern match on the structure of an `,A('code',{},[`Array`]),`, basically`,`
`,`assigning variables to its items based on its content.`]),A('p',{},[`In the example on the right, you can see how the items can be matched`,`
`,`and destructured.`]),A('p',{},[`You can play around with the array and see if you can make it match`,`
`,`each of the branches - the solution will give you one, and you might`,`
`,`need to remove some branches to make others work`,`!`])])}),d=c;export default d;