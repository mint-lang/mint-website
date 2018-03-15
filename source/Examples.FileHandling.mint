record Examples.FileHandling.State {
  file : Maybe(File),
  contents : String
}

component Examples.FileHandling {
  state : Examples.FileHandling.State {
    file = Maybe.nothing(),
    contents = ""
  }

  fun openDialog : Void {
    do {
      file =
        File.select("application/json")

      contents =
        File.readAsDataURL(file)

      next
        { state |
          contents = contents,
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
        |> Debug.log()
        |> Http.send()
    } catch Http.Error => error {
      Debug.log(error)
    }
  } where {
    formData =
      try {
        file =
          Maybe.toResult("Got Nothing", state.file)

        FormData.empty()
        |> FormData.addFile("file", file)
      } catch String => error {
        FormData.empty()
      }
  }

  fun render : Html {
    <div>
      <Ui.Button
        onClick={\event : Html.Event => openDialog()}
        label="Open Browse Dialog"/>

      <Ui.Button
        onClick={\event : Html.Event => upload()}
        label="Upload"
        disabled={Maybe.isNothing(state.file)}/>

      <{ file }>

      <pre>
        <{ state.contents }>
      </pre>
    </div>
  } where {
    file =
      state.file
      |> Maybe.map(
        \file : File =>
          <div>
            <{ file.name }>
          </div>)
      |> Maybe.withDefault(<div/>)
  }
}
