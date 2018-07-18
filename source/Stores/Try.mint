/*
This store contains the business logic of the try page.
- Loads the necessary assets asyncronously
- Compiles the source code and turns it into a blob url
*/
store Stores.Try {
  /* Represents whether or not the code is compiling. */
  property compiling : Bool = false

  /* Represents an error during compilation. */
  property error : String = ""

  /* Represents the source code. */
  property source : String = ""

  /* The url of the example page. */
  property src : String = ""

  /* Initializes the store by loading the assets. */
  fun init (url : String) : Void {
    loadSource(url)
  }

  fun loadSource (url : String) : Void {
    do {
      /* Load the example source code. */
      response =
        url
        |> Http.get()
        |> Http.send()

      /* Set it as the source. */
      setSource(response.body)

      compile()
    } catch Http.ErrorResponse => response {
      next { state | error = "Could not load souce file!" }
    }
  }

  /* Sets the source to the given value. */
  fun setSource (source : String) : Void {
    next { state | source = source }
  }

  /*
  Creates an object url from the given content and type.

  TODO: Move it to mint-core
  */
  fun createObjectUrl (string : String, type : String) : String {
    `
    (() => {
      let blob = new Blob([string], {type : type})
      return URL.createObjectURL(blob)
    })()
    `
  }

  /* Returns the html for the given URL. */
  fun html (url : String) : String {
    "<html><body><script src=\"" + url + "\"></script></body></html>"
  }

  /* Compiles the source code. */
  fun compile : Void {
    do {
      /* We are compiling. */
      next
        { state |
          compiling = true,
          error = ""
        }

      /* Compile the code on the website. */
      response =
        "https://mint-website.herokuapp.com/compile"
        |> Http.post()
        |> Http.stringBody(source)
        |> Http.send()

      /* If the compilation falied we need to display it as HMTL. */
      if (response.status == 500) {
        next { state | src = createObjectUrl(response.body, "text/html") }
      } else {
        do {
          /* Create an object URL for the script. */
          url =
            createObjectUrl(response.body, "application/javascript")

          /* Create an object URL for the html. */
          src =
            createObjectUrl(html(url), "text/html")

          /* Set the src to the URL of the html. */
          next { state | src = src }
        }
      }
    } catch Http.ErrorResponse => response {
      next { state | error = "Compiling failed!" }
    } finally {
      /* After everythig is done we are not compiling anymore. */
      next { state | compiling = false }
    }
  }
}
