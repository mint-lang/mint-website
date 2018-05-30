module AssetLoader {
  fun loadStyle (url : String) : Promise(Never, Void) {
    `
    new Promise((resolve, reject) => {
      let link = document.createElement('link')
      link.rel = "stylesheet"
      document.body.appendChild(link)
      link.onload = resolve
      link.href = url
    })
    `
  }

  fun loadScript (url : String) : Promise(Never, Void) {
    `
    new Promise((resolve, reject) => {
      let script = document.createElement('script')
      document.body.appendChild(script)
      script.onload = () => {
        document.body.removeChild(script)
        resolve()
      }
      script.src = url
    })
    `
  }
}
