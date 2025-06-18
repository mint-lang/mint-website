export const a=(b,c)=>{return ((() => {
      return b.sort((a, b) => {
        let aVal = c(a)
        let bVal = c(b)

        if (aVal < bVal) {
          return -1
        }

        if (aVal > bVal) {
          return 1
        }

        return 0
      })
    })())};