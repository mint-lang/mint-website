export const a=(b)=>{return ((() => {
      let value = b.value

      if (typeof value === "string") {
        return value
      } else {
        return ""
      }
    })())};