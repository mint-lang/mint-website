record State {
  file : Maybe(File),
  contents : String
}

component Main {
  state file : Maybe(File) = Maybe.nothing()
  state contents : String = ""

  style pre {
    word-break: break-word;
    white-space: pre-wrap;
  }

  fun openDialog : Void {
    do {
      file =
        File.select("application/json")

      contents =
        File.readAsDataURL(file)

      next
        { contents = contents,
          file = Maybe.just(file)
        }
    }
  }

  fun upload : Void {
    do {
      response =
        ""
        |> Http.post()
        |> Http.formDataBody(formData)
        |> Http.send()
    } catch Http.ErrorResponse => error {
      Debug.log(error)
    }
  } where {
    formData =
      try {
        file =
          Maybe.toResult("Got Nothing", file)

        FormData.empty()
        |> FormData.addFile("file", file)
      } catch String => error {
        FormData.empty()
      }
  }

  fun render : Html {
    <div>
      <button onClick={(event : Html.Event) : Void => { openDialog() }}>
        <{ "Open Browse Dialog" }>
      </button>

      <button
        onClick={(event : Html.Event) : Void => { upload() }}
        disabled={Maybe.isNothing(file)}>

        <{ "Upload" }>

      </button>

      <{ file }>

      <pre::pre>
        <{ contents }>
      </pre>
    </div>
  } where {
    file =
      file
      |> Maybe.map(
        (file : File) : Html => {
          <div>
            <{ File.name(file) }>
          </div>
        })
      |> Maybe.withDefault(<div/>)
  }
}
