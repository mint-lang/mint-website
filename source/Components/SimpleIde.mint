component SimpleIde {
  // The orientation of the ide (either "horizontal" or "vertical")
  property orientation : String = "vertical"

  // The height of the preview.
  property previewHeight : String = "1fr"

  // The project to edit.
  property contents : String

  // Renders the component.
  fun render : Html {
    <Ide
      previewHeight={previewHeight}
      onChange={Promise.never1}
      orientation={orientation}
      bordered={true}
      value={
        {
          files: [{ contents: contents, path: "Main.mint", solution: "" }],
          activeFile: "Main.mint"
        }
      }
    />
  }
}
