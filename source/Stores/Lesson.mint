store Stores.Lesson {
  /* The current path of the lesson. */
  state project : Project = { files: [], activeFile: ""}

  fun showSolution : Promise(Void) {
    let updatedFiles =
      for file of project.files {
        { file | contents: file.solution }
      }

    next { project: { project | files: updatedFiles } }
  }

  fun update (updated : Project) : Promise(Void) {
    next { project: updated }
  }

  fun reset (original : Project) {
    next { project: original }
  }
}
