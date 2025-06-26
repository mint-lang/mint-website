component Main {
  state images : Array(File) = []
  state hover : Bool = false

  style root {
    margin: 100px auto;
    min-height: 150px;
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

    img {
      max-width: 200px;
    }
  }

  fun select {
    let images =
      await File.selectMultiple("image/*")

    next { images: images, hover: false }
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

    let images =
      Html.DataTransfer.getFiles(event.dataTransfer)

    next { hover: false, images: images }
  }

  fun render : Html {
    <div::root
      onDragLeave={handleDragLeave}
      onDragEnter={handleDragEnter}
      onDragOver={handleDragEnter}
      onDrop={handleDrop}
    >
      <button onClick={select}>"Select Images"</button>

      for image of images {
        <img src={Url.createObjectUrlFromFile(image)}/>
      }
    </div>
  }
}
