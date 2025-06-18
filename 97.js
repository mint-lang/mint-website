import {patternVariable as F,decodeArray as G,destructure as D,newVariant as C,pattern as E,access as H} from "./runtime.js";import {a as c} from "./93.js";import {AI as B,AJ as A,j as b} from "./index.js";export const d=(e)=>{return ((() => {
      try {
        return C(A)((JSON.parse(e)))
      } catch (error) {
        return C(B)((error.message))
      }
    })())},a=(f)=>{const g=D(d(f),E(A,[F]));if(g === false){return []};const [h]=g;const i=D(G(b,A,B)(h),E(A,[F]));if(i === false){return []};const [j]=i;return c(j,H(`name`))};