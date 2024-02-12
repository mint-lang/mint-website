/* The file structure for the compiler request. */
type RequestFile {
  contents : String,
  path : String
}

/* The compiler request data structure. */
type RequestData {
  files : Array(RequestFile)
}

type LessonFile {
  solution : String,
  contents : String,
  title : String,
  path : String
}

/* The data structure for the lesson. */
type Lesson {
  previousLesson : String,
  nextLesson : String,
  files : Array(LessonFile),
  category : String,
  contents : Html,
  title : String
}

module Lessons {
  const ITEMS =
    [
      #("/", defer INTRODUCTION),
      #("/language/types", defer LANGUAGE_TYPES),
      #("/language/literals", defer LANGUAGE_LITERALS),
      #("/language/strings", defer LANGUAGE_STRINGS)
    ]
}
