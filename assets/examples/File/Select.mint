component Main {
  state files : Array(File) = []

  fun select {
    let files =
      await File.selectMultiple("*")

    next { files: files }
  }

  fun render : Html {
    <div>
      <button onClick={select}>"Browse..."</button>

      for file of files {
        <div>File.name(file)</div>
      }
    </div>
  }
}
