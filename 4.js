import {createElement as H,decodeString as F,compare as J,toArray as I,pattern as G,match as E} from "./runtime.js";import {A as D} from "./86.js";import {bo as p,jn as o,BW as C,bt as m,ij as k,jt as j,ih as i,AI as B,AJ as A,il as h,id as g,o as n,p as l,q} from "./index.js";export const r=(s,t,u)=>{return ((() => {
      let memo = t;

      g(s, (vnode) => {
        memo = u(vnode, memo)
      })

      return memo
    })())},v=(w)=>{return r(w,[],(x,y)=>{const z=h(x);return E(F(A,B)(i(x)),[[G(A,[`h1`]),()=>{return j(y,[`h1`,z,k(z)])}],[G(A,[`h2`]),()=>{return j(y,[`h2`,z,k(z)])}],[G(A,[`h3`]),()=>{return j(y,[`h3`,z,k(z)])}],[null,()=>{return y}]])})},K=({e,a,b,d,c,f})=>{const aa=(ab,ac,ad)=>{return l({name:ac,items:(()=>{const _0=[];const _1=ab;let _i=-1;for(let ae of _1){_i++;_0.push((()=>{const af=(m(ad)?`/${d}/${ad}/${ae.path}`:`/${d}/${ae.path}`);return n({content:ae.name,searchValue:ae.name,href:af,mobilePrefix:``,icon:null})})())};return _0})()})};const ag=H(C,{},I(o(c)));const ah=p([[aa(a.pages,f,``)],(()=>{const _0=[];const _1=a.categories;let _i=-1;for(let ai of _1){_i++;_0.push(aa(ai.pages,ai.name,ai.path))};return _0})()]);const aj=(()=>{const _0=[];const _1=v(c);let _i=-1;for(let ak of _1){_i++;_0.push(q({content:ak[1],icon:null,href:(J(ak[0],`h1`)?``:`#${ak[2]}`),level:E(ak[0],[[`h1`,()=>{return 0}],[`h3`,()=>{return 2}],[null,()=>{return 1}]])}))};return _0})();return H(D,{a:aj,b:b.path,c:ag,d:ah})};export default K;