import {patternVariable as I,createElement as L,useDidUpdate as J,destructure as G,useEffect as F,useSignal as E,compare as K,pattern as H,setRef as N,useRef as D,style as M} from "./runtime.js";import {AG as C,AH as B} from "./index.js";export const A=({a,c=`vertical`,d=`1fr`,e=false,b})=>{const f=D(new B()),g=E(({})),h=()=>{const _={};(e?Object.assign(_,{[`--n-a`]:`1px solid var(--border-color)`}):null);return _};F(()=>{(()=>{const i=G(f.current,H(C,[I]));if(i === false){return null};const [j]=i;return ((async () => {
      const { default: Ide } =
        await import(`./ide_af4211dfb1faeccfed2d4a050c34aca4.js`);

      g.value.ide = new Ide({
        previewHeight: d,
        endpoint: `wss://mint-sandbox-server.szikszai.co/`,
        orientation: c,
        onChange: a,
        value: b,
        base: j,
      });
    })())})()},[]);J(()=>{return ((g.value.ide) && !K(b,(g.value.ide.value))?(g.value.ide.setValue(b)):null)});return L(`div`,{className:`j`,style:M([h()]),ref:N(f,C,B)})};