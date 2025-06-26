component Main {
  state files : Array(File) = []
  state hover : Bool = false

  style root {
    margin: 100px auto;
    height: 150px;
    padding: 20px;
    width: 500px;

    flex-direction: column;
    justify-content: center;
    align-items: center;
    display: flex;
    gap: 20px;

    if hover {
      border: 4px dashed green;
    } else {
      border: 4px dashed #CCC;
    }
  }

  fun select {
    let files =
      await File.selectMultiple("*")

    next { files: files, hover: false }
  }

  fun handleDragEnter (event : Html.Event) {
    Html.Event.preventDefault(event)
    next { hover: true }
  }

  fun handleDragLeave (event : Html.Event) {
    Html.Event.preventDefault(event)
    next { hover: false }
  }

  fun handleDrop (event : Html.Event) {
    Html.Event.preventDefault(event)

    let files =
      Html.DataTransfer.getFiles(event.dataTransfer)

    next { hover: false, files: files }
  }

  fun render : Html {
    <div::root
      onDragLeave={handleDragLeave}
      onDragEnter={handleDragEnter}
      onDragOver={handleDragEnter}
      onDrop={handleDrop}
    >
      <button onClick={select}>"Select Files"</button>

      for file of files {
        <div>File.name(file)</div>
      }
    </div>
  }
}
