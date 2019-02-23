component Main {
  state file : Maybe(File) = Maybe.nothing()
  state contents : String = ""

  style pre {
    word-break: break-word;
    white-space: pre-wrap;
  }

  fun openDialog : Promise(Never, Void) {
    sequence {
      selectedFile =
        File.select("application/json")

      nextContents =
        File.readAsDataURL(selectedFile)

      next
        { contents = nextContents,
          file = Maybe.just(selectedFile)
        }
    }
  }

  fun upload : Promise(Never, Void) {
    sequence {
      response =
        ""
        |> Http.post()
        |> Http.formDataBody(formData)
        |> Http.send()

      Promise.never()
    } catch Http.ErrorResponse => error {
      sequence {
        Debug.log(error)

        Promise.never()
      }
    }
  } where {
    formData =
      try {
        resultFile =
          Maybe.toResult("Got Nothing", file)

        FormData.empty()
        |> FormData.addFile("file", resultFile)
      } catch String => error {
        FormData.empty()
      }
  }

  fun render : Html {
    <div>
      <button onClick={(event : Html.Event) : Promise(Never, Void) { openDialog() }}>
        "Open Browse Dialog"
      </button>

      <button
        onClick={(event : Html.Event) : Promise(Never, Void) { upload() }}
        disabled={Maybe.isNothing(file)}>

        "Upload"

      </button>

      <{ fileHtml }>

      <pre::pre>
        <{ contents }>
      </pre>
    </div>
  } where {
    fileHtml =
      file
      |> Maybe.map(
        (file : File) : Html {
          <div>
            <{ File.name(file) }>
          </div>
        })
      |> Maybe.withDefault(<div/>)
  }
}
