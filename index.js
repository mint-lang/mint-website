import {patternVariable as N,lazyComponent as Y,createElement as U,bracketAccess as T,decodeBoolean as G,destructure as AB,navigateHash as P,decodeNumber as H,decodeString as E,decodeArray as F,decodeMaybe as D,mapAccess as AD,newVariant as J,decodeTime as I,identity as AC,program as AF,toArray as AE,setRef as AA,compare as O,pattern as M,decoder as C,variant as A,useRef as Z,access as R,signal as K,record as B,style as W,batch as V,match as L,lazy as X,load as S,or as Q} from "./runtime.js";export const AG=A(1,`Maybe.Just`),AH=A(0,`Maybe.Nothing`),AI=A(1,`Result.Err`),AJ=A(1,`Result.Ok`),a=B(`LessonFile`),b=B(`Project`),c=B(`LessonData`),d=B(`Lesson`),e=B(`Document`),f=B(`DocumentCategory`),g=B(`Documents`),h=C(`Argument`,{value:[D(E(AJ,AI),AJ,AI,AG,AH),"v"],type:[D(E(AJ,AI),AJ,AI,AG,AH),"t"],name:[E(AJ,AI),"n"]},AJ,AI),i=C(`Entity`,{arguments:[D(F(h,AJ,AI),AJ,AI,AG,AH),"a"],description:[D(E(AJ,AI),AJ,AI,AG,AH),"d"],source:[D(E(AJ,AI),AJ,AI,AG,AH),"s"],value:[D(E(AJ,AI),AJ,AI,AG,AH),"v"],type:[D(E(AJ,AI),AJ,AI,AG,AH),"t"],broken:[G(AJ,AI),"b"],kind:[H(AJ,AI),"k"],name:[E(AJ,AI),"n"]},AJ,AI),j=C(`TopLevelEntity`,{parameters:[D(F(E(AJ,AI),AJ,AI),AJ,AI,AG,AH),"p"],entities:[D(F(i,AJ,AI),AJ,AI,AG,AH),"e"],flags:[D(F(H(AJ,AI),AJ,AI),AJ,AI,AG,AH),"f"],description:[D(E(AJ,AI),AJ,AI,AG,AH),"d"],link:[E(AJ,AI),"l"],kind:[H(AJ,AI),"k"],name:[E(AJ,AI),"n"]},AJ,AI),k=C(`User`,{nickname:E(AJ,AI),image:E(AJ,AI),id:H(AJ,AI)},AJ,AI),l=B(`User`),m=C(`Sandbox`,{mintVersion:[E(AJ,AI),"mint_version"],createdAt:[I(AJ,AI),"created_at"],updatedAt:[I(AJ,AI),"updated_at"],userId:[H(AJ,AI),"user_id"],content:E(AJ,AI),title:E(AJ,AI),id:E(AJ,AI),user:k},AJ,AI),n=B(`Sandbox`),o=B(`DocumentLayoutItem`),p=B(`DocumentLayoutCategory`),q=B(`DocumentLayoutTocItem`),r=B(`DocumentLayoutSidebarInfo`),s=B(`News`),t=B(`Package`),u=B(`Regexp.Options`),v=B(`Url`),w=B(`Http.Header`),x=B(`Http.Request`),AK=A(1,`Http.ResponseBody.JSON`),AL=A(1,`Http.ResponseBody.HTML`),AM=A(1,`Http.ResponseBody.Text`),AN=A(1,`Http.ResponseBody.XML`),AO=A(1,`Http.ResponseBody.File`),y=B(`Http.Response`),AP=A(0,`Http.Error.NetworkError`),AQ=A(0,`Http.Error.Aborted`),AR=A(0,`Http.Error.Timeout`),AS=A(0,`Http.Error.BadUrl`),z=B(`Http.ErrorResponse`),aa=B(`Provider.Url`),ab=B(`Provider.Shortcuts.Shortcut`),ac=B(`Provider.Shortcuts`),ad=B(`Time.Format.Language`),AT=A(0,`Storage.Error.SecurityError`),AU=A(0,`Storage.Error.QuotaExceeded`),AV=A(0,`Storage.Error.NotFound`),AW=A(0,`Storage.Error.Unknown`),ae=(af,ag,ah)=>{return ((() => {
      try {
        af.setItem(ag, ah)
        return J(AJ)(null)
      } catch (error) {
        switch(error.name) {
          case 'SecurityError':
            return J(AI)(new AT())
          case 'QUOTA_EXCEEDED_ERR':
            return J(AI)(new AU())
          case 'QuotaExceededError':
            return J(AI)(new AU())
          case 'NS_ERROR_DOM_QUOTA_REACHED':
            return J(AI)(new AU())
          default:
            return J(AI)(new AW())
        }
      }
    })())},ai=(aj,ak)=>{return ae((localStorage),aj,ak)},al=(am)=>{return (am.toString())},an=(ao)=>{return ((() => {
      if (window.DEBUG) {
        window.DEBUG.log(ao)
      } else {
        console.log(ao)
      }

      return ao
    })())},ap=(aq,ar)=>{return ((() => {
      try {
        let value = aq.getItem(ar)

        if (typeof value === "string") {
          return J(AJ)((value))
        } else {
          return J(AI)(new AV())
        }
      } catch (error) {
        switch(error.name) {
          case 'SecurityError':
            return J(AI)(new AT())
          default:
            return J(AI)(new AW())
        }
      }
    })())},as=(at)=>{return ap((localStorage),at)},au=(av)=>{return (window.matchMedia(av).matches)},aw=K(L(as(`dark-mode`),[[M(AI,[]),()=>{return au(`(prefers-color-scheme: dark)`)}],[M(AJ,[N]),(ax)=>{return O(ax,`true`)}]])),ay=(az)=>{L(ai(`dark-mode`,al(az)),[[M(AI,[]),()=>{return an(`Could not save dark mode setting to LocalStorage!`)}],[M(AJ,[]),()=>{return ``}]]);return (()=>{aw.value=az})()},ba=()=>{return ay(!aw.value)},bb=(bc)=>{return (bc.trim())},bd=(be)=>{return O(bb(be),``)},bf=(bg)=>{return (P(
      bg,
      /* dispatch */ false,
      /* triggerJump */ false,
      /* routeInfo */ null
    ))},bh=(bi,bj,bk)=>{return (bi.reduce(bk, bj))},bl=(bm,bn)=>{return ([...bm, ...bn])},bo=(bp)=>{return bh(bp,[],bl)},AX=A(["category","documents","document","basePath","contents","title"],`Page.Documents`),AY=A(["previousLessonPath","nextLessonPath","lessons","title","lesson","path"],`Page.Tutorial`),AZ=A(4,`Page.ApiDocs`),BA=A(2,`Page.Sandbox`),BB=A(2,`Page.Page`),BC=A(0,`Page.NotFound`),BD=A(0,`Page.Initial`),bq=(br,bs)=>{return ((() => {
      const result = [...br]
      result.unshift(bs)
      return result
    })())},BE=A(1,`Sandbox.Page.Recent`),BF=A(1,`Sandbox.Page.Mine`),BG=A(1,`Sandbox.Page.Editor`),BH=A(0,`Sandbox.Page.Initial`),BI=A(0,`Sandbox.Page.Error`),bt=(bu)=>{return !bd(bu)},bv=(bw,bx)=>{return L(bw,[[M(AG,[N]),(by)=>{return J(AG)(bx(by))}],[M(AH,[]),()=>{return new AH()}]])},bz=(ca,cb)=>{return (ca.join(cb))},cc=(cd,ce)=>{return (cd.filter((item) => !ce(item)))},cf=(cg)=>{return O(cg,``)},ch=()=>{return (document.activeElement && document.activeElement.blur())},ci=(cj)=>{return (document.title = cj)},ck=K(new BD()),cl=(cm)=>{const cn=L(cm,[[M(AY,[null,null,null,N]),(co)=>{return bq(co,`Tutorial`)}],[M(BA,[N]),(cp)=>{return L(cp,[[M(BG,[N]),(cq)=>{return [`Sandbox`,cq.title]}],[null,()=>{return [`Sandboxes`]}]])}],[M(BC,[]),()=>{return [`404`]}],[M(BB,[N]),(cr)=>{return (bt(cr)?[cr]:[])}],[M(AX,[N,null,N,null,null,N]),(cs,ct,cu)=>{return [cu,Q(AH,AI,bv(cs,R(`name`)),``),ct.name]}],[null,()=>{return []}]]);const cv=bz(cc(cn,bd),` / `);const cw=(cf(cv)?`Mint Programming Language`:`${cv} - Mint Programming Language`);ch();ci(cw);return (()=>{ck.value=cm})()},cx=()=>{return cl(new BC())},cy=async (cz,da,db,dc)=>{const dd=(bd(dc)?(()=>{bf(`/${da}/`);return `/`})():dc);const de=await S(cz);const df=bo([(()=>{const _0=[];const _1=de.pages;let _i=-1;for(let dg of _1){_i++;_0.push([`/${dg.path}`,dg,new AH()])};return _0})(),bo((()=>{const _0=[];const _1=de.categories;let _i=-1;for(let dh of _1){_i++;_0.push((()=>{const _0=[];const _1=dh.pages;let _i=-1;for(let di of _1){_i++;_0.push([`/${dh.path}/${di.path}`,di,J(AG)(dh)])};return _0})())};return _0})())]);const dj=(()=>{const _0=[];const _1=df;let _i=-1;for(let dk of _1){_i++;const _2=O(dk[0],dd);if(!_2){continue};_0.push([dk[1],dk[2]])};return _0})();return L(dj,[[[[N,N]],(dl,dm)=>{return (async ()=>{const dn=await S(dl.contents);return cl(J(AX)(dm,de,dl,da,dn,db))})()}],[null,()=>{return cx()}]])},dp=`./1.js`,dq=(dr,ds)=>{return T((()=>{const _0=[];const _1=dr;let _i=-1;for(let dt of _1){_i++;const _2=ds(dt);if(!_2){continue};_0.push(dt)};return _0})(),0,AG,AH)},du=(dv,dw)=>{return T((()=>{const _0=[];const _1=dv;let _i=-1;for(let dx of _1){_i++;const dy=_i;const _2=O(dx,dw);if(!_2){continue};_0.push(dy)};return _0})(),0,AG,AH)},dz=(ea)=>{return T(ea,0,AG,AH)},eb=(ec,ed)=>{return (()=>{const _0=[];const _1=ec;let _i=-1;for(let ee of _1){_i++;_0.push(ed(ee))};return _0})()},ef=K(b({activeFile:``,files:[]})),eg=(eh)=>{return (()=>{ef.value=eh})()},ei=async (ej)=>{const ek=await S(dp);const el=(bd(ej)?(()=>{bf(`/tutorial/`);return `/`})():ej);const em=dq(ek,(en)=>{return O(en.path,el)});return L(em,[[M(AG,[N]),(eo)=>{return (async ()=>{const ep=Q(AH,AI,du(ek,eo),-1);const eq=bv(T(ek,ep - 1,AG,AH),R(`path`));const er=bv(T(ek,ep + 1,AG,AH),R(`path`));const es=await S(eo.data);const et=Q(AH,AI,(dz(eb(es.files,R(`path`)))),``);eg(b({activeFile:et,files:es.files}));return cl(J(AY)(eq,er,ek,[eo.category,eo.title],es,el))})()}],[null,()=>{return cx()}]])},eu=(ev,ew)=>{return ((() => {
      const query = window.matchMedia(ev);
      const listener = (event) => ew(query.matches);
      query.addListener(listener)
      return () => query.removeListener(listener);
    })())},ex=(ey,ez)=>{eu(ey,ez);return au(ey)},fa=K(ex(`(max-width: 1200px)`,(fb)=>{return fa.value=fb})),fc=K(ex(`(max-width: 768px)`,(fd)=>{return fc.value=fd})),fe=()=>{return L(ck.value,[[M(AY,[]),()=>{return true}],[M(BA,[]),()=>{return true}],[null,()=>{return false}]])},BJ=()=>{return U(`style`,{},[`@font-face {
  src: url(${`./noto-sans-v36-latin_latin-ext-300_d834501f0188268a94fb947540fb5214.woff2`})
       format('woff2');

  font-family: 'Noto Sans';
  font-display: swap;
  font-style: normal;
  font-weight: 300;
}

@font-face {
  src: url(${`./noto-sans-v36-latin_latin-ext-regular_3b1abbaae4b2d2611477e7e2a4a221b0.woff2`})
       format('woff2');

  font-family: 'Noto Sans';
  font-display: swap;
  font-style: normal;
  font-weight: 400;
}

@font-face {
  src: url(${`./noto-sans-v36-latin_latin-ext-500_ec6842091b60ce268c1b9491971b0322.woff2`})
       format('woff2');

  font-family: 'Noto Sans';
  font-display: swap;
  font-style: normal;
  font-weight: 500;
}

@font-face {
  src: url(${`./forum-v18-latin_latin-ext-regular_a7c27ddadbc3aec901c4341839b950d2.woff2`}
       format('woff2');

  font-family: 'Forum';
  font-display: swap;
  font-style: normal;
  font-weight: 400;
}

@font-face {
  src: url(${`./fira-code-v22-latin_latin-ext-regular_ab8e0831be504c61f00d6e73e201a438.woff2`})
       format('woff2');

  font-family: 'Fira Code';
  font-display: swap;
  font-style: normal;
  font-weight: 400;
}`])},ff=K(false),fg=()=>{return (()=>{ff.value=false})()},fh=K([]),fi=(fj)=>{return V(()=>{ff.value=true;fh.value=fj})},fk=(fl)=>{return (document.createElement(fl))},fm=(fn)=>{const fo=fk(`a`);return ((() => {
      fo.href = fn

      return v({hostname:(fo.hostname || ""),protocol:(fo.protocol || ""),origin:(fo.origin || ""),path:(fo.pathname || ""),search:(fo.search || ""),hash:(fo.hash || ""),host:(fo.host || ""),port:(fo.port || "")})
    })())},fp=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M4 6l16 0`}),U(`path`,{"d":`M4 12l16 0`}),U(`path`,{"d":`M4 18l16 0`})])]),BK=A(["action","disabled","label","icon"],`MenuItem.Action`),BL=A(["icon","label","items"],`MenuItem.Group`),BM=A(["icon","label","href","disabled","target"],`MenuItem.Link`),BN=A(0,`MenuItem.Divider`),BO=X(`./2.js`),BP=()=>{const fq=()=>{const _={[`--w-a`]:`url(` + `./top-center_a634975408017728b10e118e9262b922.png` + `)`};return _},fr=()=>{const _={[`--x-a`]:`url(` + `./top-left_1bdfda531adf5e5cee231eb289200eb3.png` + `)`};(fc.value?Object.assign(_,{[`--x-b`]:`initial`}):Object.assign(_,{[`--x-b`]:`swing`}));return _},fs=()=>{const _={[`--y-a`]:`url(` + `./top-right_123c71ce6bfa294c5309c6a2962de7fc.png` + `)`};(fc.value?Object.assign(_,{[`--y-b`]:`initial`}):Object.assign(_,{[`--y-b`]:`swing-reverse`}));return _},ft=()=>{const _={[`--z-a`]:`url(` + `./bottom-center_b46ec9212568cc562d5e822d1d503b1b.png` + `)`};return _},fu=()=>{const _={[`--aa-a`]:`url(` + `./bottom-right_1eb184b03e0340e4801be214997ac620.png` + `)`};(fc.value?Object.assign(_,{[`--aa-b`]:`initial`}):Object.assign(_,{[`--aa-b`]:`swing-reverse`}));return _},fv=()=>{const _={[`--ab-a`]:`url(` + `./bottom-left_7499a21d0dc589bf82416932f9992c7f.png` + `)`};(fc.value?Object.assign(_,{[`--ab-b`]:`initial`}):Object.assign(_,{[`--ab-b`]:`swing`}));return _};return U(`div`,{className:`ac`},[U(`div`,{className:`ad ah`,style:W([ft()])}),U(`div`,{className:`ad ai`,style:W([fu()])}),U(`div`,{className:`ad aj`,style:W([fv()])}),U(`div`,{className:`ad ae`,style:W([fq()])}),U(`div`,{className:`ad ag`,style:W([fs()])}),U(`div`,{className:`ad af`,style:W([fr()])})])},fw=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M4 17v2a2 2 0 0 0 2 2h12a2 2 0 0 0 2 -2v-2`}),U(`path`,{"d":`M7 11l5 5l5 -5`}),U(`path`,{"d":`M12 4l0 12`})])]),fx=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M16 6h3a1 1 0 0 1 1 1v11a2 2 0 0 1 -4 0v-13a1 1 0 0 0 -1 -1h-10a1 1 0 0 0 -1 1v12a3 3 0 0 0 3 3h11`}),U(`path`,{"d":`M8 8l4 0`}),U(`path`,{"d":`M8 12l4 0`}),U(`path`,{"d":`M8 16l4 0`})])]),fy=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M5 7l5 5l-5 5`}),U(`path`,{"d":`M12 19l7 0`})])]),fz=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M19.953 8.017l1.047 6.983v2a3 3 0 0 1 -3 3h-12a3 3 0 0 1 -3 -3v-2l1.245 -8.297a2 2 0 0 1 1.977 -1.703h3.778`}),U(`path`,{"d":`M3 15h18`}),U(`path`,{"d":`M13 3l5.5 1.5`}),U(`path`,{"d":`M15.75 3.75l-2 7`}),U(`path`,{"d":`M7 10.5c1.667 -.667 3.333 -.667 5 0c1.667 .667 3.333 .667 5 0`})])]),ga=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M7 16.5l-5 -3l5 -3l5 3v5.5l-5 3z`}),U(`path`,{"d":`M2 13.5v5.5l5 3`}),U(`path`,{"d":`M7 16.545l5 -3.03`}),U(`path`,{"d":`M17 16.5l-5 -3l5 -3l5 3v5.5l-5 3z`}),U(`path`,{"d":`M12 19l5 3`}),U(`path`,{"d":`M17 16.5l5 -3`}),U(`path`,{"d":`M12 13.5v-5.5l-5 -3l5 -3l5 3v5.5`}),U(`path`,{"d":`M7 5.03v5.455`}),U(`path`,{"d":`M12 8l5 -3`})])]),gb=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M3 19a9 9 0 0 1 9 0a9 9 0 0 1 9 0`}),U(`path`,{"d":`M3 6a9 9 0 0 1 9 0a9 9 0 0 1 9 0`}),U(`path`,{"d":`M3 6l0 13`}),U(`path`,{"d":`M12 6l0 13`}),U(`path`,{"d":`M21 6l0 13`})])]),gc=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M7 8l-4 4l4 4`}),U(`path`,{"d":`M17 8l4 4l-4 4`}),U(`path`,{"d":`M14 4l-4 16`})])]),gd=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M5 4m0 1a1 1 0 0 1 1 -1h2a1 1 0 0 1 1 1v14a1 1 0 0 1 -1 1h-2a1 1 0 0 1 -1 -1z`}),U(`path`,{"d":`M9 4m0 1a1 1 0 0 1 1 -1h2a1 1 0 0 1 1 1v14a1 1 0 0 1 -1 1h-2a1 1 0 0 1 -1 -1z`}),U(`path`,{"d":`M5 8h4`}),U(`path`,{"d":`M9 16h4`}),U(`path`,{"d":`M13.803 4.56l2.184 -.53c.562 -.135 1.133 .19 1.282 .732l3.695 13.418a1.02 1.02 0 0 1 -.634 1.219l-.133 .041l-2.184 .53c-.562 .135 -1.133 -.19 -1.282 -.732l-3.695 -13.418a1.02 1.02 0 0 1 .634 -1.219l.133 -.041z`}),U(`path`,{"d":`M14 9l4 -1`}),U(`path`,{"d":`M16 16l3.923 -.98`})])]),ge=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M15 10v11l-5 -3l-5 3v-11a3 3 0 0 1 3 -3h4a3 3 0 0 1 3 3z`}),U(`path`,{"d":`M11 3h5a3 3 0 0 1 3 3v11`})])]),gf=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M6 4h11a2 2 0 0 1 2 2v12a2 2 0 0 1 -2 2h-11a1 1 0 0 1 -1 -1v-14a1 1 0 0 1 1 -1m3 0v18`}),U(`path`,{"d":`M13 8l2 0`}),U(`path`,{"d":`M13 12l2 0`})])]),gg=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M9 19c-4.3 1.4 -4.3 -2.5 -6 -3m12 5v-3.5c0 -1 .1 -1.4 -.5 -2c2.8 -.3 5.5 -1.4 5.5 -6a4.6 4.6 0 0 0 -1.3 -3.2a4.2 4.2 0 0 0 -.1 -3.2s-1.1 -.3 -3.5 1.3a12.3 12.3 0 0 0 -6.2 0c-2.4 -1.6 -3.5 -1.3 -3.5 -1.3a4.2 4.2 0 0 0 -.1 3.2a4.6 4.6 0 0 0 -1.3 3.2c0 4.6 2.7 5.7 5.5 6c-.6 .6 -.6 1.2 -.5 2v3.5`})])]),gh=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M12 12m-4 0a4 4 0 1 0 8 0a4 4 0 1 0 -8 0`}),U(`path`,{"d":`M3 12h1m8 -9v1m8 8h1m-9 8v1m-6.4 -15.4l.7 .7m12.1 -.7l-.7 .7m0 11.4l.7 .7m-12.1 -.7l-.7 .7`})])]),gi=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M12 3c.132 0 .263 0 .393 0a7.5 7.5 0 0 0 7.92 12.446a9 9 0 1 1 -8.313 -12.454z`}),U(`path`,{"d":`M17 4a2 2 0 0 0 2 2a2 2 0 0 0 -2 2a2 2 0 0 0 -2 -2a2 2 0 0 0 2 -2`}),U(`path`,{"d":`M19 11h2m-1 -1v2`})])]),gj=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M5 12l-2 0l9 -9l9 9l-2 0`}),U(`path`,{"d":`M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7`}),U(`path`,{"d":`M9 21v-6a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v6`})])]),gk=U(`svg`,{dangerouslySetInnerHTML:{__html:`<path d="M33 0v.351h.19c.176 0 .34.071.49.212.152.118.28.27.382.457.1.19.177.391.226.599.051.21.076.398.076.562v19.53c0 .186-.025.399-.077.633a2.598 2.52 0 0 1-.226.598c-.097.183-.227.35-.38.494a.696.675 0 0 1-.49.21H33v.353h4.128v-.354h-.19a.74.717 0 0 1-.53-.209 2.885 2.799 0 0 1-.417-.494 2.587 2.51 0 0 1-.226-.598 3.232 3.136 0 0 1-.077-.634V3.518l9.28 20.48 9.77-21.568v19.28c0 .187-.024.4-.075.634a1.907 1.85 0 0 1-.264.598c-.1.187-.226.353-.376.494a.7.68 0 0 1-.495.21h-.189v.353h5.377v-.354h-.189a.745.723 0 0 1-.53-.209 2.876 2.79 0 0 1-.416-.494 2.587 2.51 0 0 1-.227-.598 3.231 3.135 0 0 1-.076-.634V2.181c0-.164.025-.352.076-.563a2.598 2.52 0 0 1 .227-.598c.127-.187.264-.34.415-.457a.745.723 0 0 1 .532-.212h.189V0h-4.28L45.65 19.25 36.862 0zm62.757 2.181L91.97 3.306v.354c.632.024.997.21 1.1.563.124.329.19.69.19 1.09v3.132h-2.122v1.197h2.12v8.76c0 .68.011 1.348.038 2.007a6.06 5.88 0 0 0 .416 1.794c.227.54.594.972 1.1 1.301.504.329 1.212.494 2.12.494.733 0 1.274-.094 1.629-.282.378-.187.67-.364.87-.529a.79.767 0 0 1 .569-.211v-2.568h-.341a3.265 3.168 0 0 1-.907 1.689c-.456.47-.949.704-1.48.704-.353 0-.63-.082-.831-.246-.202-.187-.354-.446-.454-.775a5.468 5.305 0 0 1-.192-1.232 34.55 33.518 0 0 1-.038-1.654V9.642H100V8.446h-4.243zm-30.866.775c-.505 0-.935.165-1.288.494a1.702 1.651 0 0 0-.493 1.195c0 .47.165.857.493 1.162.353.305.783.458 1.287.458.505 0 .936-.153 1.288-.458.354-.305.53-.693.53-1.162 0-.47-.175-.867-.53-1.195a1.795 1.741 0 0 0-1.287-.494zm1.742 5.067-3.79 1.127v.316c.608.024.975.225 1.102.6.125.352.188.728.188 1.126V21.71c0 .187-.026.4-.076.634a2.556 2.48 0 0 1-.227.598 1.892 1.892 0 0 1-.378.494.74.717 0 0 1-.53.21V24h4.923v-.354a.744.722 0 0 1-.532-.209 1.945 1.887 0 0 1-.377-.494 2.587 2.51 0 0 1-.227-.598 3.232 3.136 0 0 1-.076-.634zm9.014.036-3.788 1.127v.317c.606.023.972.222 1.098.598.125.351.19.727.19 1.126V21.71c0 .187-.024.4-.076.634a1.83 1.83 0 0 1-.266.598c-.1.187-.227.353-.376.494a.7.68 0 0 1-.495.21v.353h4.925v-.354a.74.717 0 0 1-.53-.209 4.645 4.506 0 0 1-.379-.494 2.468 2.468 0 0 1-.228-.598 3.231 3.135 0 0 1-.076-.634v-8.583c0-.492.127-.963.381-1.409a4.425 4.425 0 0 1 1.02-1.195 5.448 5.285 0 0 1 1.44-.846 4.54 4.404 0 0 1 1.668-.316 4.36 4.36 0 0 1 1.628.317 3.808 3.694 0 0 1 1.477.915c.43.422.77.95 1.023 1.583.252.633.378 1.372.378 2.218v7.316c0 .187-.025.4-.076.634a1.84 1.84 0 0 1-.266.598c-.1.187-.227.353-.377.494a.7.68 0 0 1-.495.21v.353h4.888v-.354a.744.722 0 0 1-.531-.21 4.645 4.506 0 0 1-.38-.493 2.587 2.51 0 0 1-.226-.598 3.231 3.135 0 0 1-.075-.634v-7.562c0-.681-.126-1.374-.379-2.077a5.447 5.284 0 0 0-1.137-1.97c-.53-.61-1.21-1.102-2.044-1.478-.834-.376-1.844-.564-3.03-.564-.707 0-1.327.071-1.857.212-.505.118-.96.281-1.364.492a4.845 4.7 0 0 0-.984.634 5.654 5.485 0 0 0-.682.598z" id="text" fill="currentColor"/>
    <path d="M23.233.004a4.245 4.599 0 0 0-1.287.597.443.48 0 0 0-.55-.435 6.221 6.74 0 0 0-1.758.823.443.48 0 0 0-.576-.34 6.51 7.053 0 0 0-2.217 1.489.475.515 0 0 0-.225-.323.441.478 0 0 0-.398-.015c-.424.209-1.453.826-2.5 2.29l.02.01c-1.187 1.314-2.223 2.785-2.917 4.85a.501.543 0 0 1-.402.365.434.47 0 0 1-.422-.21 3.367 3.648 0 0 0-.261-.376c-1.223 2.659-1.074 8.536.033 11.255 1.058 2.69 1.309 3.715 1.35 3.931.204-.722.557-1.954.63-2.216a48.307 52.334 0 0 1 1.181-3.709c-.922-1.844-1.055-4.452-.489-6.855.172-.729 1.003-.566.834.142-.438 1.84-.421 3.86.13 5.432a48.332 52.36 0 0 1 2.512-5.563 9.648 10.452 0 0 1 .127-3.5 3.399 3.682 0 0 1 .418-1.198c.384-.613 1.054-.08.68.518-.012.02-.014.02-.014.016l-.033.085a3.905 4.231 0 0 0-.197.658 7.31 7.92 0 0 0-.18 1.94 47.878 51.87 0 0 1 4.197-6.344c.426-.545 1.043.06.627.59a46.249 50.104 0 0 0-4.128 6.245 9.79 10.606 0 0 0 1.505-.94 4.178 4.526 0 0 0 .459-.415.916.916 0 0 1 .06-.06c-.004.002-.004.001.008-.018.292-.603 1.086-.001.68.514a3.256 3.527 0 0 1-.794.793 14.75 15.98 0 0 1-2.708 1.58 47.448 51.402 0 0 0-2.46 5.456c1.404-.627 2.738-1.772 3.805-2.998.394-.49 1.035.224.586.654-1.347 1.55-3.052 2.968-4.858 3.608-.453 1.266-1.29 4.487-1.594 5.67.504-.61 1.751-1.779 4.758-3.097 3.807-1.57 5.215-4.046 5.648-5.046a.478.518 0 0 0-.192-.658 1.97 2.135 0 0 0-.464-.199 14.351 15.548 0 0 0 1.705-3.279.488.529 0 0 0-.003-.399.444.481 0 0 0-.252-.261 2.308 2.5 0 0 0-.442-.125 6.555 7.102 0 0 0 .844-2.782.463.502 0 0 0-.117-.377.45.488 0 0 0-.324-.164h-.02a7.089 7.68 0 0 0 .666-2.388.458.496 0 0 0-.402-.556 7.637 8.274 0 0 0 .463-1.878.47.509 0 0 0-.117-.407.441.478 0 0 0-.326-.162A5.064 5.486 0 0 0 23.99.815a.85.92 0 0 0-.08-.55c-.132-.316-.582-.262-.676-.26z" fill="#36A65D"/>
    <path d="M2.48.288c-.012 0-.02.003-.03.004a.542.587 0 0 0-.042.004c-.02.004-.04.006-.06.013a.289.313 0 0 0-.024.01c-.003 0-.003.002-.005.003a.452.49 0 0 0-.06.033c-.01.005-.02.009-.028.015a.45.488 0 0 0-.198.436A4.172 4.52 0 0 0 .688.412.941 1.02 0 0 1 .63.418l-.087.01L.485.44.45.449a1.043 1.13 0 0 0-.1.03C.329.485.312.495.293.504.28.51.265.514.252.522.232.532.217.545.198.559L.166.585C.148.602.13.617.114.637.107.645.102.658.096.667L.09.675a.346.375 0 0 0-.046.098.85.92 0 0 0-.01.556 5.093 5.518 0 0 0 .63 1.321.447.484 0 0 0-.301.21.48.521 0 0 0-.065.422 7.731 8.376 0 0 0 .69 1.793.425.46 0 0 0-.249.18.456.494 0 0 0-.08.433 7.024 7.61 0 0 0 .96 2.264h-.021a.458.496 0 0 0-.301.209.48.52 0 0 0-.07.394 6.517 7.06 0 0 0 1.181 2.628 2.265 2.454 0 0 0-.422.19.445.482 0 0 0-.217.294.493.534 0 0 0 .047.397 14.294 15.486 0 0 0 2.096 2.992 2.09 2.264 0 0 0-.44.27.474.513 0 0 0-.107.675l.094.153c.036.057.077.115.12.178l.008.01a7.555 8.184 0 0 0 1.216 1.375l.018.017a8.583 9.298 0 0 0 .299.26c.047.038.095.073.143.11.065.052.131.102.2.153l.187.135c.059.042.114.085.175.126.07.048.143.094.215.14l.174.111c.08.048.161.095.243.142l.173.098c.089.048.181.095.271.141.059.03.111.06.17.09.104.05.21.098.315.146.04.018.077.038.117.056l.004.002.033.013c.086.037.812.262 1.424.41-.453-1.136-.739-2.63-.853-4.212a17.299 18.741 0 0 1-1.425-1.192c-.524-.406.097-1.247.569-.77.257.24.532.471.809.698a16.659 18.048 0 0 1 .262-3.547 15.929 17.257 0 0 1-2.923-1.317 3.464 3.753 0 0 1-.93-.751c-.486-.505.31-1.248.682-.637.016.02.013.023.008.02.01.008.033.025.072.059a4.5 4.876 0 0 0 .536.39 10.541 11.42 0 0 0 1.712.828A49.352 53.466 0 0 0 4.481 5.52 49.888 54.047 0 0 0 2.44 3.235c-.499-.52.108-1.242.618-.709a51.134 55.396 0 0 1 5.13 6.298 7.809 8.46 0 0 0-.378-2.057 4.135 4.48 0 0 0-.274-.68l-.045-.09c0 .005 0 .007-.015-.013-.46-.596.21-1.247.68-.636a3.632 3.935 0 0 1 .568 1.236c.157.538.267 1.09.347 1.647.058-.13.115-.262.178-.381a.496.537 0 0 1 .28-.236.426.461 0 0 1 .333.042 1.754 1.9 0 0 1 .404.36c.6-1.54 1.435-3.081 2.459-4.326-.391-.511-1.21-1.196-1.24-1.223-.009-.008-.02-.01-.03-.017a.47.51 0 0 0-.355-.09.447.484 0 0 0-.3.236 2.316 2.509 0 0 0-.17.431l-.046-.043a9.087 9.845 0 0 0-.327-.325l-.05-.05a8.174 8.856 0 0 0-.365-.32l-.057-.049a7.813 8.464 0 0 0-.375-.292l-.046-.03a6.833 7.403 0 0 0-.54-.347c-.016-.01-.031-.022-.047-.03l-.068-.038c-.034-.019-.067-.035-.1-.052l-.043-.022c-.039-.02-.078-.043-.115-.06l-.033-.016c-.038-.018-.074-.037-.11-.052l-.033-.013c-.033-.015-.068-.028-.101-.042l-.04-.015c-.026-.01-.056-.025-.082-.035l-.066-.026-.037-.011-.094-.033a.496.537 0 0 0-.117-.02h-.01c-.009.001-.018.005-.027.005-.025 0-.052 0-.076.006a.426.461 0 0 0-.164.083.476.516 0 0 0-.184.35A6.457 6.994 0 0 0 4.9.416h-.007a.44.477 0 0 0-.1-.006c-.014 0-.03.004-.045.006a.437.473 0 0 0-.376.427A6.217 6.735 0 0 0 2.528.29L2.524.286c-.015-.002-.03 0-.046 0z" fill="#277944"/>`},viewBox:`0 0 100 24`,height:`24`,width:`100`}),BQ=({gl=[]})=>{const gm=(gn)=>{return L(gn,[[M(BN,[]),()=>{return U(`div`,{className:`q`})}],[M(BK,[N,N,N,N]),(go,gp,gq,gr)=>{return U(`button`,{"onClick":go,"disabled":gp,className:`n`,style:W([gs(gq)])},[gr,gq])}],[M(BM,[N,N,N,N,N]),(gt,gu,gv,gw,gx)=>{return U(`a`,{"href":gv,"target":gx,"disabled":gw,className:`n`,style:W([gs(gu)])},[gt,gu])}],[M(BL,[N,N]),(gy,gz)=>{return U(`a`,{className:`n`,style:W([gs(gz)])},[gy,gz])}]])},gs=(ha)=>{const _={};(bd(ha)?Object.assign(_,{[`--q-a`]:`0`}):Object.assign(_,{[`--q-a`]:`10px`}));return _};return (fc.value?U(`div`,{"onClick":()=>{return fi(gl)},className:`r`},[fp]):U(`div`,{className:`m`},[(()=>{const _0=[];const _1=gl;let _i=-1;for(let hb of _1){_i++;_0.push(L(hb,[[M(BN,[]),()=>{return gm(hb)}],[M(BK,[]),()=>{return gm(hb)}],[M(BM,[]),()=>{return gm(hb)}],[M(BL,[N,N,N]),(hc,hd,he)=>{return U(`div`,{"tabindex":`0`,className:`p`},[gm(hb),U(`div`,{className:`o`},[(()=>{const _0=[];const _1=he;let _i=-1;for(let hf of _1){_i++;_0.push(gm(hf))};return _0})()])])}]]))};return _0})()]))},BR=()=>{const hg=()=>{const _={};(!fe()?Object.assign(_,{[`--r-a`]:`1280px`}):null);return _};const hh=[J(BM)(fw,`Install`,`/install`,false,``),J(BM)(fx,`News`,`/news`,false,``),new BN(),J(BM)(fy,`Try`,`/sandbox/try`,false,``),J(BM)(fz,`Sandbox`,`/sandbox`,false,``),new BN(),J(BM)(ga,`Packages`,`/packages`,false,``),new BN(),J(BL)(gb,`Documentation`,[J(BM)(gc,`Tutorial`,`/tutorial/`,false,``),J(BM)(gd,`Guides`,`/guides/`,false,``),J(BM)(ge,`Reference`,`/reference/`,false,``),J(BM)(gf,`API Docs`,`/api/`,false,``)]),new BN(),J(BM)(gg,(fc.value?`Source`:``),`https://github.com/mint-lang/mint`,false,`_blank`),new BN(),J(BK)(ba,false,(fc.value?`Toggle Mode`:``),(aw.value?gh:gi))];const hi=(fc.value?bq(hh,J(BM)(gj,`Home`,`/`,false,``)):hh);return U(`div`,{className:`s`},[U(`div`,{className:`t`,style:W([hg()])},[U(`a`,{"href":`/`,className:`u`},[gk]),U(BQ,{gl:hi})])])},hj=()=>{return (new Date())},BS=X(`./3.js`),BT=({children: hk=[]})=>{const hl=()=>{const _={};(aw.value?Object.assign(_,{[`--bm-a`]:`#444444`,[`--bm-b`]:`#1E1E1E`,[`--bm-c`]:`#1E1E1ECC`,[`--bm-d`]:`#FFFFFF10`,[`--bm-e`]:`#1E1E1E90`,[`--bm-f`]:`#222222`,[`--bm-g`]:`#DDDDDD`,[`--bm-h`]:`cornflowerblue`,[`--bm-i`]:`lightcoral`,[`--bm-j`]:`orchid`,[`--bm-k`]:`orange`,[`--bm-l`]:`#36A65D`,[`--bm-m`]:`tomato`,[`--bm-n`]:`gray`}):Object.assign(_,{[`--bm-a`]:`#CCCCCC`,[`--bm-b`]:`#FFFFFF`,[`--bm-d`]:`#00000015`,[`--bm-c`]:`#FFFFFFCC`,[`--bm-e`]:`#FFFFFF80`,[`--bm-f`]:`#F9F9F9`,[`--bm-g`]:`#333333`,[`--bm-j`]:`darkmagenta`,[`--bm-k`]:`darkorange`,[`--bm-h`]:`royalblue`,[`--bm-i`]:`indianred`,[`--bm-l`]:`#277944`,[`--bm-n`]:`darkgray`,[`--bm-m`]:`crimson`}));(fc.value?Object.assign(_,{[`--bm-o`]:`auto`}):Object.assign(_,{[`--bm-o`]:`100vh`}));(fe()?Object.assign(_,{[`--bm-p`]:`auto 1fr`,[`--bm-q`]:`grid`,[`--bm-r`]:`100vh`}):Object.assign(_,{[`--bm-q`]:`block`}));return _},hm=()=>{const _={};(fe()?Object.assign(_,{[`--bn-a`]:`0`,[`--bn-b`]:`grid`}):Object.assign(_,{[`--bn-c`]:`column`,[`--bn-b`]:`flex`,[`--bn-d`]:`1280px`,[`--bn-e`]:`0 auto`}));(fe()?Object.assign(_,{[`--bn-f`]:`0`,[`--bn-e`]:`0`}):(fc.value || fa.value?Object.assign(_,{[`--bn-f`]:`20px`,[`--bn-e`]:`0`}):Object.assign(_,{[`--bn-f`]:`5vh 20px 20px 20px`,[`--bn-a`]:`60vh`})));return _};return U(`div`,{className:`dc`,style:W([hl()])},[U(BJ,{}),U(Y,{c:[],key:`MobileMenu`,p:{},x:BO}),U(BP,{}),U(BR,{}),U(`div`,{className:`dd`,style:W([hm()])},[hk]),U(Y,{c:[],key:`Footer`,p:{},x:BS})])},hn=(ho)=>{return (!!ho)},BU=({hp=null,hq=null,hr=null})=>{const hs=()=>{const _={};(fc.value?Object.assign(_,{[`--ao-a`]:`1.25em`}):null);return _};return U(`div`,{className:`bd`},[(hn(hr)?U(`div`,{className:`be`},[hr]):null),(hn(hp)?U(`div`,{className:`bf`,style:W([hs()])},[hp]):null),(hn(hq)?U(`div`,{className:`bg`},[hq]):null)])},BV=()=>{const ht=()=>{const _={};(fc.value?Object.assign(_,{[`--bi-a`]:`70vh`}):null);return _};return U(`div`,{className:`cs`,style:W([ht()])},[U(BU,{hp:`Please wait while the requested page is loading.`,hr:`......`})])},hu=(hv)=>{return !cf(hv)},BW=({hw=`auto`,hx=14,children: hy=[],hz=16,ia=``})=>{const ib=Z(new AH()),ic=()=>{const _={[`--k-a`]:hz + `px`,[`--l-a`]:hw};(fc.value?Object.assign(_,{[`--k-a`]:hx + `px`,[`--k-b`]:`0`}):null);(fc.value?Object.assign(_,{[`--l-a`]:`0`}):null);(fc.value?Object.assign(_,{[`--m-a`]:`none`}):null);return _};return (hu(ia)?U(`div`,{"dangerouslySetInnerHTML":({__html: ia}),className:`i`,style:W([ic()])}):U(`div`,{className:`i`,style:W([ic()]),ref:AA(ib,AG,AH)},[hy]))},id=(ie,ig)=>{((() => {
      if (Array.isArray(ie)) {
        ie.forEach((item) => id(item, ig))
      } else {
        if (typeof ie !== "string") {
          ig(ie)

          if (ie.props.children) {
            if (Array.isArray(ie.props.children)) {
              ie.props
                .children
                .forEach((item) => id(item, ig))
            } else {
              id(ie.props.children, ig)
            }
          }
        }
      }
    })());return ie},ih=(ii)=>{return (ii.type)},ij=(ik)=>{return (ik
      .replace(/[^\p{Lu}\p{Ll}0-9\-_]+/gu, '-') // Replace non alphanumerical with dashes
      .replace(/\p{Lu}([\p{Ll}0-9]+|[\p{Lu}0-9]+)?/gu, '-$&')
      .replace(/-{2,}/g, '-')
      .replace(/^-+/i, '')
      .replace(/-+$/i, '')
      .toLowerCase())},il=(im)=>{return ((() => {
      let content = "";

      if (typeof im == "string") {
        content += im
      } else if (Array.isArray(im)) {
        im.forEach((child) => {
          content += il(child)
        })
      } else {
        let children =
          im.props.children;

        if (children) {
          if (typeof children == "string") {
            content += children
          } else {
            content += il(children)
          }
        }
      }

      return content;
    })())},io=(ip)=>{return (ip)},iq=(ir,is,it)=>{return ((() => {
      ir.props[is] = it;
      return ir
    })())},iu=(iv)=>{return (iv)},iw=(ix,iy)=>{return (ix.props[iy])},iz=(ja)=>{const jb=ij(il(ja));const jc=io(iq(iu(U(`a`,{"href":`#${jb}`,"name":jb})),`children`,iw(ja,`children`)));(jc.instrumented = true);return iq(ja,`children`,jc)},jd=(je,jf)=>{return (je.startsWith(jf))},jg=(jh,ji)=>{return ((() => {
      if (jh.props.children) {
        jh.props.children.unshift(ji);
      };
      return jh
    })())},jj=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M12 6h-6a2 2 0 0 0 -2 2v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-6`}),U(`path`,{"d":`M11 13l9 -9`}),U(`path`,{"d":`M15 4h5v5`})])]),jk=U(`span`,{style:W([`position:relative;top:-1px`])},[jj]),jl=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M9 15l6 -6`}),U(`path`,{"d":`M11 6l.463 -.536a5 5 0 0 1 7.071 7.072l-.534 .464`}),U(`path`,{"d":`M13 18l-.397 .534a5.068 5.068 0 0 1 -7.127 0a4.972 4.972 0 0 1 0 -7.071l.524 -.463`})])]),jm=U(`span`,{},[jl]),jn=(jo,jp=false)=>{return id(jo,(jq)=>{return ((!jq.instrumented)?(()=>{L(E(AJ,AI)(ih(jq)),[[M(AJ,[`h2`]),()=>{return (jp?jq:iz(jq))}],[M(AJ,[`h3`]),()=>{return (jp?jq:iz(jq))}],[M(AJ,[`a`]),()=>{return (()=>{const jr=AB((E(AJ,AI)(iw(jq,`href`))),M(AJ,[N]));if(jr === false){return jq};const [js]=jr;return (jd(js,`http://`) || jd(js,`https://`)?jg(iq(jq,`target`,AC(`_blank`)),jk):jg(jq,jm))})()}],[null,()=>{return jq}]]);(jq.instrumented = true);return jq})():jq)})},jt=(ju,jv)=>{return ([...ju, jv])},BX=X(`./4.js`),jw=(jx)=>{return (Promise.resolve(jx))},BY=X(`./5.js`),BZ=X(`./6.js`),jy=(jz,ka)=>{return {...jz,withCredentials: ka}},kb=(kc)=>{return (kc.toLowerCase())},kd=(ke,kf,kg)=>{return {...ke,headers: jt(cc(ke.headers,(kh)=>{return O(kb(kh.key),kb(kf))}),w({key:kf,value:kg}))}},ki=()=>{return (([1e7] + -1e3 + -4e3 + -8e3 + -1e11)
      .replace(/[018]/g, c =>
        (c ^ crypto.getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4)
          .toString(16)))},kj=K([]),kk=(kl)=>{return (kl)},km=(kn,ko)=>{return kk((()=>{const _0=[];const _1=kn;let _i=-1;for(let [kp,kq] of _1){_i++;const _2=!O(kp,ko);if(!_2){continue};_0.push([kp,kq])};return _0})())},kr=(ks)=>{L(AD(kj.value,ks,AG,AH),[[M(AG,[N]),(kt)=>{return (kt.abort())}],[null,()=>{return null}]]);return (()=>{kj.value=km(kj.value,ks)})()},ku=(kv,kw,kx)=>{return ((() => {
      const result = []
      let set = false

      for (let item of kv) {
        if (O(item[0], kw)) {
          set = true
          result.push([kw, kx])
        } else {
          result.push(item)
        }
      }

      if (!set) {
        result.push([kw, kx])
      }

      return result
    })())},ky=async (kz,la=ki(),lb=(lc)=>{return null})=>{await kr(la);return (new Promise((resolve, reject) => {
      const xhr = new XMLHttpRequest();
      (()=>{kj.value=ku(kj.value,la,(xhr))})();

      xhr.withCredentials = kz.withCredentials
      xhr.responseType = "blob"

      const getResponseHeaders = () => {
        return xhr
          .getAllResponseHeaders()
          .trim()
          .split(/[\r\n]+/)
          .map((line) => {
            const parts = line.split(': ');
            return [parts.shift(), parts.join(': ')];
          })
      }

      try {
        xhr.open(kz.method.toUpperCase(), kz.url, true)
      } catch (error) {
        (()=>{kj.value=km(kj.value,la)})()

        resolve(J(AI)(z({headers:(getResponseHeaders()),type:new AS(),status:(xhr.status),url:kz.url})))
      }

      kz.headers.forEach((item) => {
        xhr.setRequestHeader(item.key, item.value)
      })

      xhr.addEventListener('error', (event) => {
        (()=>{kj.value=km(kj.value,la)})()

        resolve(J(AI)(z({headers:(getResponseHeaders()),type:new AP(),status:(xhr.status),url:kz.url})))
      })

      xhr.addEventListener('timeout', (event) => {
        (()=>{kj.value=km(kj.value,la)})()

        resolve(J(AI)(z({headers:(getResponseHeaders()),type:new AR(),status:(xhr.status),url:kz.url})))
      })

      xhr.addEventListener('load', async (event) => {
        (()=>{kj.value=km(kj.value,la)})()

        let contentType = xhr.getResponseHeader("Content-Type") || "";
        let responseText = await xhr.response.text();
        let body;

        if (contentType.startsWith("text/html")) {
          const object =
            (new DOMParser()).parseFromString(responseText, "text/html");

          const errorNode =
            object.querySelector("parsererror");

          if (errorNode) {
            body = J(AM)((responseText));
          } else {
            body = J(AL)((object));
          }
        } else if (contentType.startsWith("application/xml")) {
          const object =
            (new DOMParser()).parseFromString(responseText, "application/xml");

          const errorNode =
            object.querySelector("parsererror");

          if (errorNode) {
            body = J(AM)((responseText));
          } else {
            body = J(AN)((object));
          }
        } else if (contentType.startsWith("application/json")) {
          try {
            body = J(AK)((JSON.parse(responseText)));
          } catch (e) {
            body = J(AM)((responseText));
          }
        } else if (contentType.startsWith("text/")) {
          body = J(AM)((responseText));
        }

        if (!body) {
          const parts = fm(kz.url).path.split('/');
          body = J(AO)((new File([xhr.response], parts[parts.length - 1], { type: contentType })));
        }

        resolve(J(AJ)(y({headers:(getResponseHeaders()),bodyString:(responseText),status:(xhr.status),body:(body)})))
      })

      xhr.addEventListener('abort', (event) => {
        (()=>{kj.value=km(kj.value,la)})()

        resolve(J(AI)(z({headers:(getResponseHeaders()),type:new AQ(),status:(xhr.status),url:kz.url})))
      })

      lb((xhr));
      xhr.send(kz.body)
    }))},ld=async (le,lf)=>{const lg=jy(kd(le,`Content-Type`,`application/json`),true);const lh=AB(await ky(lg),M(AJ,[N]));if(lh === false){return J(AI)(null)};const [li]=lh;const lj=AB(li.body,M(AK,[N]));if(lj === false){return J(AI)(null)};const [lk]=lj;const ll=AB(lf(lk),M(AJ,[N]));if(ll === false){return J(AI)(null)};const [lm]=ll;return J(AJ)(lm)},ln=(lo,lp)=>{return {...lo,url: lp}},lq=(lr,ls)=>{return {...lr,method: ls}},lt=()=>{return x({withCredentials:false,method:`GET`,body:(null),headers:[],url:``})},CA=A(1,`UserStatus.LoggedIn`),CB=A(0,`UserStatus.LoggedOut`),CC=A(0,`UserStatus.Initial`),lu=(lv)=>{return ln(lq(lt(),`GET`),lv)},CD=X(`./7.js`),CE=({children: lw=[],lx})=>{const ly=()=>{const _={};(fc.value?Object.assign(_,{[`--ar-a`]:`0`}):null);(fc.value?Object.assign(_,{[`--as-a`]:`2em`}):null);(fc.value?Object.assign(_,{[`--at-a`]:`20px`}):null);(fc.value?Object.assign(_,{[`--au-a`]:`16px`}):null);return _};return U(`div`,{className:`bi`,style:W([ly()])},[U(`h1`,{},[lx]),U(BW,{},AE(U(`p`,{},[lw]))),U(`hr`,{})])},CF=X(`./8.js`),CG=X(`./9.js`),CH=X(`./10.js`),CI=X(`./11.js`),CJ=()=>{return U(BT,{},AE(L(ck.value,[[M(AX,[N,N,N,N,N,N]),(lz,ma,mb,mc,md,me)=>{return U(Y,{c:[],key:`Documents`,p:{a:ma,b:mb,c:md,d:mc,e:lz,f:me},x:BX,f:()=>{return U(BV,{})}})}],[M(AY,[N,N,N,null,N,N]),(mf,mg,mh,mi,mj)=>{return U(Y,{c:[],key:`Lesson`,p:{a:mf,b:mg,c:mi.contents,d:mh,e:mj},x:BY,f:()=>{return U(BV,{})}})}],[M(AZ,[N,N,N,N]),(mk,ml,mm,mn)=>{return U(Y,{c:[],key:`Pages.ApiDocs`,p:{a:mn,b:ml,c:mm,d:mk},x:BZ,f:()=>{return U(BV,{})}})}],[M(BA,[N,N]),(mo,mp)=>{return L(mo,[[M(BG,[N]),(mq)=>{return U(Y,{c:[],key:`Sandbox.Editor`,p:{a:mq,b:mp},x:CD,f:()=>{return U(BV,{})}})}],[M(BE,[N]),(mr)=>{return U(Y,{c:[],key:`Sandbox.Recent`,p:{a:mr,b:mp},x:CF,f:()=>{return U(BV,{})}})}],[M(BF,[N]),(ms)=>{return U(Y,{c:[],key:`Sandbox.Mine`,p:{a:ms,b:mp},x:CG,f:()=>{return U(BV,{})}})}],[M(BI,[]),()=>{return U(Y,{c:[],key:`Pages.Error`,p:{},x:CH,f:()=>{return U(BV,{})}})}],[M(BH,[]),()=>{return null}]])}],[M(BC,[]),()=>{return U(Y,{c:[],key:`Pages.NotFound`,p:{},x:CI,f:()=>{return U(BV,{})}})}],[M(BB,[N,N]),(mt,mu)=>{return mu}],[M(BD,[]),()=>{return null}]])))},CK=X(`./12.js`),CL=X(`./13.js`),CM=X(`./14.js`),CN=X(`./15.js`),mv=n({user:l({nickname:`Unknown`,image:`./user_6f6bbb16aec97391aefe120ec5a4e6a2.png`,id:0}),content:`component Main {
  state counter = 0

  fun increment {
    next { counter: counter + 1 }
  }

  fun decrement {
    next { counter: counter - 1 }
  }

  fun render {
    <div>
      <button onClick={decrement}>
        "Decrement"
      </button>

      <span>
        counter
      </span>

      <button onClick={increment}>
        "Increment"
      </button>
    </div>
  }
}
`,createdAt:hj(),updatedAt:hj(),title:`Mint Sandbox`,mintVersion:``,userId:0,id:``}),mw=async ()=>{const mx=ld(lu(`${`https://api.mint-lang.com`}/sandbox`),F(m,AJ,AI));return L(await mx,[[M(AJ,[N]),(my)=>{return J(BF)(my)}],[M(AI,[]),()=>{return new BI()}]])},mz=async ()=>{const na=ld(lu(`${`https://api.mint-lang.com`}/sandbox/recent`),F(m,AJ,AI));return L(await na,[[M(AJ,[N]),(nb)=>{return J(BE)(nb)}],[M(AI,[]),()=>{return new BI()}]])},nc=async (nd)=>{const ne=ld(lu(`${`https://api.mint-lang.com`}/sandbox/${nd}`),m);return L(await ne,[[M(AJ,[N]),(nf)=>{return J(BG)(nf)}],[M(AI,[]),()=>{return new BI()}]])},ng=(nh,ni)=>{return (Math.min(nh, ni))},nj=(nk,nl)=>{return (Math.max(nk, nl))},nm=(nn,no,np)=>{return ng(np,nj(no,nn))},nq=(nr)=>{return (nr.length)},ns=(nt,nu)=>{return (nt.slice(nm(0,nu,nq(nt))))},nv=async (nw)=>{const nx=(bd(nw)?(()=>{bf(`/sandbox/`);return `/`})():nw);const ny=await L(nx,[[`/try`,()=>{return jw(J(BG)(mv))}],[`/mine`,()=>{return mw()}],[`/`,()=>{return mz()}],[null,()=>{return nc(ns(nx,1))}]]);const nz=ld(lu(`${`https://api.mint-lang.com`}/sandbox/user`),k);const oa=L(await nz,[[M(AJ,[N]),(ob)=>{return J(CA)(ob)}],[M(AI,[]),()=>{return new CB()}]]);return cl(J(BA)(ny,oa))},oc=`./16.js`,od=(oe,of)=>{return (oe.split(of))},og=(oh,oi)=>{return ((() => {
      while (oh.slice(0, oi.length) == oi) {
        oh = oh.slice(oi.length)
      }

      return oh
    })())},CO=({oj})=>{const ok=()=>{const _={};(fc.value?Object.assign(_,{[`--az-a`]:`20px`}):null);return _};return U(`div`,{},[U(CE,{lx:`Packages`},AE(`Here are some curated packages for your next project!`,(fc.value?null:U(`br`,{})),`To add your package here reach out on `,jn(U(`a`,{"href":`https://discord.gg/NXFUJs2`},[`Discord`])),`.`)),U(`div`,{className:`bw`,style:W([ok()])},[(()=>{const _0=[];const _1=oj;let _i=-1;for(let ol of _1){_i++;_0.push(U(`a`,{"href":`/packages/${ol.name}`,"key":ol.name,className:`bx`},[U(`div`,{className:`bz`},[ol.name]),U(`div`,{className:`by`},[ol.version])]))};return _0})()])])},om=(on)=>{return L(on,[[M(AH,[]),()=>{return new AH()}],[M(AG,[N]),(oo)=>{return oo}]])},op=(oq)=>{return !O(oq,new AH())},or=(os)=>{return om(dq(os,op))},ot=U(`svg`,{"viewBox":`0 0 24 24`},[U(`g`,{"stroke-linejoin":`round`,"stroke-linecap":`round`,"stroke":`currentColor`,"fill":`none`,style:W([`stroke-width: var(--tabler-stroke-width);`])},[U(`path`,{"d":`M10 5m0 2a2 2 0 0 1 2 -2h6a2 2 0 0 1 2 2v10a2 2 0 0 1 -2 2h-6a2 2 0 0 1 -2 -2z`}),U(`path`,{"d":`M7 7l0 10`}),U(`path`,{"d":`M4 8l0 8`})])]),ou=(ov,ow,ox)=>{return L(dq(ov,(oy)=>{return O(oy.name,ow)}),[[M(AG,[N]),(oz)=>{return (async ()=>{const pa=await S(oz.documentation);return L(or([dq(pa,(pb)=>{return O(pb.link,ox)}),T(pa,0,AG,AH)]),[[M(AG,[N]),(pc)=>{return (()=>{const pd=J(AG)(r({title:oz.name,items:[[`Readme`,gb,oz.readme],[`Source`,gg,oz.url],[oz.version,ot,``]]}));return J(AG)([oz,pa,pc,pd])})()}],[null,()=>{return new AH()}]])})()}],[null,()=>{return null}]])},pe=async (pf)=>{const pg=await S(oc);const ph=await L(od(og(pf,`/`),`/`),[[[``],()=>{return jw(J(AG)(J(BB)(`Packages`,U(CO,{oj:pg}))))}],[[N,N],(pi,pj)=>{return (async ()=>{return L(await ou(pg,pi,pj),[[M(AG,[[N,N,N,N]]),(pk,pl,pm,pn)=>{return J(AG)(J(AZ)(`/packages/${pk.name}`,pl,pm,pn))}],[null,()=>{return new AH()}]])})()}],[[N],(po)=>{return (async ()=>{return L(await ou(pg,po,``),[[M(AG,[[N,N,N,N]]),(pp,pq,pr,ps)=>{return (()=>{bf(`/packages/${pp.name}/${pr.name}`);return J(AG)(J(AZ)(`/packages/${pp.name}`,pq,pr,ps))})()}],[null,()=>{return new AH()}]])})()}],[null,()=>{return jw(new AH())}]]);return L(ph,[[M(AG,[N]),(pt)=>{return cl(pt)}],[null,()=>{return cx()}]])},pu=`./17.js`,pv=`./18.js`,CP=X(`./19.js`),pw=(px,py)=>{return dz((()=>{const _0=[];const _1=px;let _i=-1;for(let [pz,qa] of _1){_i++;const _2=O(pz,py);if(!_2){continue};_0.push(qa)};return _0})())},CQ=X(`./20.js`),qb=`./21.js`,qc=`./22.js`;export default ()=>{AF(CJ,{},AJ,[{await:false,path:`/brand-book`,decoders:[],mapping:[],handler:()=>{return cl(J(BB)(`Brand Book`,U(Y,{c:[],key:`Pages.BrandBook`,p:{},x:CK,f:()=>{return U(BV,{})}})))}},{await:false,path:`/checklist`,decoders:[],mapping:[],handler:()=>{return cl(J(BB)(`Checklist`,U(Y,{c:[],key:`Pages.Checklist`,p:{},x:CL,f:()=>{return U(BV,{})}})))}},{await:false,path:`/install`,decoders:[],mapping:[],handler:()=>{return cl(J(BB)(`Install`,U(Y,{c:[],key:`Pages.Install`,p:{},x:CM,f:()=>{return U(BV,{})}})))}},{await:false,path:`/`,decoders:[],mapping:[],handler:()=>{return cl(J(BB)(``,U(Y,{c:[],key:`Pages.Home`,p:{},x:CN,f:()=>{return U(BV,{})}})))}},{await:true,path:`/sandbox*path`,decoders:[E(AJ,AI)],mapping:[`path`],handler:(qd)=>{return nv(qd)}},{await:true,path:`/packages*path`,decoders:[E(AJ,AI)],mapping:[`path`],handler:(qe)=>{return pe(qe)}},{await:true,path:`/api*path`,decoders:[E(AJ,AI)],mapping:[`path`],handler:(qf)=>{return (async ()=>{const qg=og(qf,`/`);const qh=await S(pu);return (bd(qg)?L(T(qh,0,AG,AH),[[M(AG,[N]),(qi)=>{return (()=>{bf(`/api/${qi.link}`);return cl(J(AZ)(`/api`,qh,qi,new AH()))})()}],[null,()=>{return cx()}]]):(()=>{const qj=L(dq(qh,(qk)=>{return O(qk.link,qg)}),[[M(AG,[N]),(ql)=>{return J(AG)(ql)}],[null,()=>{return new AH()}]]);return L(qj,[[M(AG,[N]),(qm)=>{return cl(J(AZ)(`/api`,qh,qm,new AH()))}],[null,()=>{return cx()}]])})())})()}},{await:true,path:`/news*path`,decoders:[E(AJ,AI)],mapping:[`path`],handler:(qn)=>{return (async ()=>{const qo=await S(pv);const qp=og(qn,`/`);return (bd(qp)?cl(J(BB)(`News`,U(Y,{c:[],key:`Pages.News.Index`,p:{a:qo},x:CP,f:()=>{return U(BV,{})}}))):L(pw(qo,qp),[[M(AG,[N]),(qq)=>{return (async ()=>{const qr=await S(qq.contents);return cl(J(BB)(qq.title,U(Y,{c:[],key:`Pages.News.Page`,p:{a:qq,b:qr},x:CQ,f:()=>{return U(BV,{})}})))})()}],[null,()=>{return cx()}]]))})()}},{await:true,path:`/tutorial*path`,decoders:[E(AJ,AI)],mapping:[`path`],handler:(qs)=>{return ei(qs)}},{await:true,path:`/reference*path`,decoders:[E(AJ,AI)],mapping:[`path`],handler:(qt)=>{return cy(qb,`reference`,`Reference`,qt)}},{await:true,path:`/guides*path`,decoders:[E(AJ,AI)],mapping:[`path`],handler:(qu)=>{return cy(qc,`guides`,`Guides`,qu)}},{await:false,path:`*`,decoders:[],mapping:[],handler:()=>{return cx()}}],true)};