store Stores.Lesson {
  // The current path of the lesson.
  state project : Project = { activeFile: "", files: [] }

  // Shows the solution.
  fun showSolution : Promise(Void) {
    next {
      project:
        { project |
          files:
            for file of project.files {
              { file | contents: file.solution }
            }
        }
    }
  }

  // Resets the project.
  fun reset (original : Project) {
    next { project: original }
  }
}
