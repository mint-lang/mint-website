// Data structure for a project.
type Project {
  files : Array(LessonFile),
  activeFile : String
}

// Data structure for a file in a lession.
type LessonFile {
  solution : String,
  contents : String,
  path : String
}

// Data structure for a lesson.
type LessonData {
  files : Array(LessonFile),
  contents : Html
}

// Data structure for a lesson item.
type Lesson {
  data : Deferred(LessonData),
  category : String,
  title : String,
  path : String
}

// The page.
type Page {
  Documents(
    category : Maybe(DocumentCategory),
    documents : Documents,
    document : Document,
    basePath : String,
    contents : Html,
    title : String)

  Tutorial(
    previousLessonPath : Maybe(String),
    nextLessonPath : Maybe(String),
    lessons : Array(Lesson),
    title : Array(String),
    lesson : LessonData,
    path : String)

  ApiDocs(Array(TopLevelEntity), TopLevelEntity)
  Page(String, Html)
  NotFound
  Sandbox
  Initial
}

// Data structure for the document tree.
type Documents {
  categories : Array(DocumentCategory),
  pages : Array(Document)
}

// Data structure for a document category.
type DocumentCategory {
  pages : Array(Document),
  path : String,
  name : String
}

// Data structure for a document.
type Document {
  contents : Deferred(Html),
  name : String,
  path : String
}

// Data structure for a top-level entity in the API Docs.
type TopLevelEntity {
  parameters : Maybe(Array(String)) using "p",
  entities : Maybe(Array(Entity)) using "e",
  flags : Maybe(Array(Number)) using "f",
  description : Maybe(String) using "d",
  link : Maybe(String) using "l",
  kind : Number using "k",
  name : String using "n"
}

// Data structure for an entity in the API Docs.
type Entity {
  arguments : Maybe(Array(Argument)) using "a",
  description : Maybe(String) using "d",
  source : Maybe(String) using "s",
  value : Maybe(String) using "v",
  type : Maybe(String) using "t",
  broken : Bool using "b",
  kind : Number using "k",
  name : String using "n"
}

// Data structure for an argument in the API Docs.
type Argument {
  value : Maybe(String) using "v",
  type : Maybe(String) using "t",
  name : String using "n"
}
