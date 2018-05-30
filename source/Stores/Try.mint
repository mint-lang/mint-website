store Stores.Try {
  property initialized : Bool = false
  property compiling : Bool = false
  property source : String = ""
  property src : String = ""

  fun init : Void {
    if (initialized) {
      void
    } else {
      do {
        response =
          Http.get("/example.mint")
          |> Http.send()

        next { state | source = response.body }

        AssetLoader.loadScript("/codemirror.min.js")
        AssetLoader.loadStyle("/codemirror.min.css")
        AssetLoader.loadStyle("/codemirror.neo.min.css")

        next { state | initialized = true }
      } catch Http.ErrorResponse => response {
        void
      }
    }
  }

  fun setSource (source : String) : Void {
    next { state | source = source }
  }

  fun createObjectUrl (string : String, type : String) : String {
    `
    (() => {
      let blob = new Blob([string], {type : type})
      return URL.createObjectURL(blob)
    })()
    `
  }

  fun html (url : String) : String {
    "<html><body><script src=\"" + url + "\"></script></body></html>"
  }

  fun compile : Void {
    do {
      next { state | compiling = true }

      response =
        Http.post("https://mint-website.herokuapp.com/compile")
        |> Http.stringBody(source)
        |> Http.send()

      if (response.status == 500) {
        next { state | src = createObjectUrl(response.body, "text/html") }
      } else {
        do {
          url =
            createObjectUrl(response.body, "application/javascript")

          next { state | src = createObjectUrl(html(url), "text/html") }
        }
      }
    } catch Http.ErrorResponse => response {
      void
    } finally {
      next { state | compiling = false }
    }
  }
}
