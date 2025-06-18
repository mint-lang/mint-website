import {normalizeEvent as A} from "./runtime.js";export const a=(b,c,d)=>{return ((() => {
      const listener = (event) => {
        d(A(event))
      }

      window.addEventListener(b, listener, c);
      return () => window.removeEventListener(b, listener, c);
    })())};