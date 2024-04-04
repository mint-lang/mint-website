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

  Page(String, Html)
  Initial
}

type Documents {
  categories : Array(DocumentCategory),
  pages : Array(Document)
}

type DocumentCategory {
  pages : Array(Document),
  path : String,
  name : String
}

type Document {
  contents : Deferred(Html),
  name : String,
  path : String
}

component Main {
  connect Application exposing { page }

  fun render : Html {
    <Body>
      case page {
        Documents(contents, documents, document, title, basePath) =>
          <Documents
            documents={documents}
            document={document}
            contents={contents}
            basePath={basePath}
            title={title}/>

        Tutorial(previousLessonPath, nextLessonPath, path, lesson, lessons) =>
          <Lesson
            previousLessonPath={previousLessonPath}
            nextLessonPath={nextLessonPath}
            instructions={lesson.contents}
            lessons={lessons}
            path={path}/>

        Page(title, page) => page
        Initial => <></>
      }
    </Body>
  }
}
