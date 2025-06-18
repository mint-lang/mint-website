import {createElement as B,pattern as G,compare as F,variant as D,match as E,style as C} from "./runtime.js";import {a as f} from "./84.js";import {ad as h,kb as g,fc as e} from "./index.js";export const A=({c,d})=>{const i=()=>{const _={};(e.value?Object.assign(_,{[`--ae-a`]:`1.25`,[`--ae-b`]:`14px`}):null);return _};return B(`h1`,{className:`ar`,style:C([i()])},[d,B(`span`,{},[c])])},j=(k)=>{return ((() => {
      const dayNumber = k.getUTCDay()
      return dayNumber === 0 ? 7 : dayNumber;
    })())},H=D(0,`Weekday.Monday`),I=D(0,`Weekday.Tuesday`),J=D(0,`Weekday.Wednesday`),K=D(0,`Weekday.Thursday`),L=D(0,`Weekday.Friday`),M=D(0,`Weekday.Saturday`),N=D(0,`Weekday.Sunday`),l=(m)=>{return E(j(m),[[1,()=>{return new H()}],[2,()=>{return new I()}],[3,()=>{return new J()}],[4,()=>{return new K()}],[5,()=>{return new L()}],[6,()=>{return new M()}],[null,()=>{return new N()}]])},n=(o)=>{return (o.toUpperCase())},p=(q)=>{return (q.getUTCMonth() + 1)},O=D(0,`Month.January`),P=D(0,`Month.February`),Q=D(0,`Month.March`),R=D(0,`Month.April`),S=D(0,`Month.May`),T=D(0,`Month.June`),U=D(0,`Month.July`),V=D(0,`Month.August`),W=D(0,`Month.September`),X=D(0,`Month.October`),Y=D(0,`Month.November`),Z=D(0,`Month.December`),r=(s)=>{return E(p(s),[[1,()=>{return new O()}],[2,()=>{return new P()}],[3,()=>{return new Q()}],[4,()=>{return new R()}],[5,()=>{return new S()}],[6,()=>{return new T()}],[7,()=>{return new U()}],[8,()=>{return new V()}],[9,()=>{return new W()}],[10,()=>{return new X()}],[11,()=>{return new Y()}],[null,()=>{return new Z()}]])},t=(u)=>{return (u.toString())},v=(w,x,y)=>{return (w.padStart(y, x))},z=(aa)=>{return (aa.getUTCDate())},ab=(ac)=>{return ((() => {
      const first =
        Date.UTC(ac.getUTCFullYear(), 0, 1)

      const current =
        Date.UTC(ac.getUTCFullYear(), ac.getUTCMonth(), ac.getUTCDate())

      return ((current - first) / 24 / 60 / 60 / 1000) + 1
    })())},ad=(ae)=>{return (F(ae % 4,0)) && (!F(ae % 100,0) || F(ae % 400,0))},af=(ag)=>{return ((() => {
      let year =
        ag.getUTCFullYear();

      const day =
        ag.getUTCDate();

      const dayYear =
        ab(ag);

      const dayWeek =
        j(ag);

      // The week number can be calculated as number of Mondays in the year up to the ordinal date.
      // The addition by +10 consists of +7 to start the week numbering with 1
      // instead of 0 and +3 because the first week has already started in the
      // previous year and the first Monday is actually in week 2.
      let weekNumber = Math.trunc((dayYear - dayWeek + 10) / 7);

      if (weekNumber == 0) {
        // Week number 0 means the date belongs to the last week of the previous year.
        year -= 1;

        // The week number depends on whether the previous year has 52 or 53 weeks
        // which can be determined by the day of week of January 1.
        // The year has 53 weeks if January 1 is on a Friday or the year was a leap
        // year and January 1 is on a Saturday.
        const janFirstDayOfWeek = (dayWeek - dayYear + 1) % 7;
        const isLeapYear = ad((year));

        if (janFirstDayOfWeek == 5 || (janFirstDayOfWeek == 6 && isLeapYear)) {
          weekNumber = 53;
        } else {
          weekNumber = 52;
        }
      } else if (weekNumber == 53) {
        // Week number 53 is actually week number 1 of the following year, if
        // December 31 is on a Monday, Tuesday or Wednesday.
        const dec31DayOfWeek = (dayWeek + 31 - day) % 7;

        if (dec31DayOfWeek <= 3) {
          weekNumber = 1;
          year += 1;
        }
      }

      return [year, weekNumber];
    })())},ah=(ai)=>{return (ai.getUTCHours())},aj=(ak)=>{return (Math.abs(ak))},al=(am)=>{return (am.getUTCMilliseconds())},an=(ao)=>{return (ao.getUTCMinutes())},ap=(aq)=>{return (aq.getTime())},ar=(as)=>{return (as.getUTCSeconds())},at=(au,av,aw)=>{return E(aw,[[`a`,()=>{return av.toWeekdayAbbreviation(l(au))}],[`^a`,()=>{return n(av.toWeekdayAbbreviation(l(au)))}],[`A`,()=>{return av.toWeekdayName(l(au))}],[`^A`,()=>{return n(av.toWeekdayName(l(au)))}],[`b`,()=>{return av.toMonthAbbreviation(r(au))}],[`^b`,()=>{return n(av.toMonthAbbreviation(r(au)))}],[`B`,()=>{return av.toMonthName(r(au))}],[`^B`,()=>{return n(av.toMonthName(r(au)))}],[`c`,()=>{return a(au,av,`%a %b %-d %H:%M:%S %Y`)}],[`C`,()=>{return t(f(au) / 100)}],[`d`,()=>{return v(t(z(au)),`0`,2)}],[`-d`,()=>{return t(z(au))}],[`*d`,()=>{return (()=>{const ax=z(au);return `${ax}${av.toOrdinalSuffix(ax)}`})()}],[`D`,()=>{return a(au,av,`%m/%d/%Y`)}],[`e`,()=>{return v(t(z(au)),` `,2)}],[`F`,()=>{return a(au,av,`%Y-%m-%d`)}],[`g`,()=>{return v(t((af(au)[0] % 100)),`0`,2)}],[`G`,()=>{return v(t(af(au)[0]),`0`,4)}],[`H`,()=>{return v(t(ah(au)),`0`,2)}],[`I`,()=>{return v(t(aj((ah(au) - 12))),`0`,2)}],[`j`,()=>{return v(t(ab(au)),`0`,3)}],[`k`,()=>{return v(t(ah(au)),` `,2)}],[`l`,()=>{return v(t(aj((ah(au) - 12))),` `,2)}],[`L`,()=>{return v(t(al(au)),`0`,3)}],[`m`,()=>{return v(t(p(au)),`0`,2)}],[`_m`,()=>{return v(t(p(au)),` `,2)}],[`-m`,()=>{return t(p(au))}],[`M`,()=>{return v(t(an(au)),`0`,2)}],[`p`,()=>{return g(av.amPm(ah(au)))}],[`P`,()=>{return n(av.amPm(ah(au)))}],[`r`,()=>{return a(au,av,`%I:%M:%S %P`)}],[`R`,()=>{return a(au,av,`%H:%M`)}],[`s`,()=>{return t(ap(au))}],[`S`,()=>{return v(t(ar(au)),`0`,2)}],[`T`,()=>{return a(au,av,`%H:%M:%S`)}],[`u`,()=>{return t(j(au))}],[`V`,()=>{return v(t(af(au)[1]),`0`,2)}],[`w`,()=>{return (()=>{const ay=j(au);return t((F(ay,7)?0:ay))})()}],[`x`,()=>{return a(au,av,`%m/%d/%Y`)}],[`X`,()=>{return a(au,av,`%H:%M:%S`)}],[`y`,()=>{return t(f(au) % 100)}],[`Y`,()=>{return v(t(f(au)),`0`,4)}],[null,()=>{return aw}]])},a=(az,ba,bb)=>{return ((() => {
      let result = "";
      let index = 0;
      let char;

      while (char = bb[index]) {
        if (char == "%") {
          const nextTwoChars =
            bb.slice(index + 1, index + 3);

          let converted =
            at(az,ba,(nextTwoChars));

          if (converted !== nextTwoChars) {
            result += converted
            index += 3;
            continue;
          } else {
            const nextChar =
              bb[index + 1];

            const converted =
              at(az,ba,(nextChar));

            if (converted !== nextChar) {
              result += converted;
              index += 2;
              continue;
            }
          }
        }

        result += char;
        index++;
      }

      return result;
    })())},b=h({toMonthAbbreviation:(bc)=>{return E(bc,[[G(O,[]),()=>{return `Jan`}],[G(P,[]),()=>{return `Feb`}],[G(Q,[]),()=>{return `Mar`}],[G(R,[]),()=>{return `Apr`}],[G(S,[]),()=>{return `May`}],[G(T,[]),()=>{return `Jun`}],[G(U,[]),()=>{return `Jul`}],[G(V,[]),()=>{return `Aug`}],[G(W,[]),()=>{return `Sep`}],[G(X,[]),()=>{return `Oct`}],[G(Y,[]),()=>{return `Nov`}],[G(Z,[]),()=>{return `Dec`}]])},toMonthName:(bd)=>{return E(bd,[[G(O,[]),()=>{return `January`}],[G(P,[]),()=>{return `February`}],[G(Q,[]),()=>{return `March`}],[G(R,[]),()=>{return `April`}],[G(S,[]),()=>{return `May`}],[G(T,[]),()=>{return `June`}],[G(U,[]),()=>{return `July`}],[G(V,[]),()=>{return `August`}],[G(W,[]),()=>{return `September`}],[G(X,[]),()=>{return `October`}],[G(Y,[]),()=>{return `November`}],[G(Z,[]),()=>{return `December`}]])},toWeekdayName:(be)=>{return E(be,[[G(H,[]),()=>{return `Monday`}],[G(I,[]),()=>{return `Tuesday`}],[G(J,[]),()=>{return `Wednesday`}],[G(K,[]),()=>{return `Thursday`}],[G(L,[]),()=>{return `Friday`}],[G(M,[]),()=>{return `Saturday`}],[G(N,[]),()=>{return `Sunday`}]])},toWeekdayAbbreviation:(bf)=>{return E(bf,[[G(H,[]),()=>{return `Mon`}],[G(I,[]),()=>{return `Tue`}],[G(J,[]),()=>{return `Wed`}],[G(K,[]),()=>{return `Thu`}],[G(L,[]),()=>{return `Fri`}],[G(M,[]),()=>{return `Sat`}],[G(N,[]),()=>{return `Sun`}]])},toOrdinalSuffix:(bg)=>{return E(bg % 100,[[11,()=>{return `th`}],[12,()=>{return `th`}],[13,()=>{return `th`}],[null,()=>{return E(bg % 10,[[1,()=>{return `st`}],[2,()=>{return `nd`}],[3,()=>{return `rd`}],[null,()=>{return `th`}]])}]])},amPm:(bh)=>{return (bh >= 12?`pm`:`am`)},someSecondsAgo:(bi)=>{return (bi < 30?`just now`:`${bi} seconds ago`)},someMinutesAgo:(bj)=>{return (bj < 2?`a minute ago`:`${bj} minutes ago`)},someHoursAgo:(bk)=>{return (bk < 2?`an hour ago`:`${bk} hours ago`)},someDaysAgo:(bl)=>{return (bl < 2?`yesterday`:`${bl} days ago`)},someMonthsAgo:(bm)=>{return (bm < 2?`last month`:`${bm} months ago`)},someYearsAgo:(bn)=>{return (bn < 2?`last year`:`${bn} years ago`)},inSomeSeconds:(bo)=>{return (bo < 30?`in a few seconds`:`in ${bo} seconds`)},inSomeMinutes:(bp)=>{return (bp < 2?`in a minute`:`in ${bp} minutes`)},inSomeHours:(bq)=>{return (bq < 2?`in an hour`:`in ${bq} hours`)},inSomeDays:(br)=>{return (br < 2?`tomorrow`:`in ${br} days`)},inSomeMonths:(bs)=>{return (bs < 2?`in a month`:`in ${bs} months`)},inSomeYears:(bt)=>{return (bt < 2?`in a year`:`in ${bt} years`)},rightNow:`right now`});