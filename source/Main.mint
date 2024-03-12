type Page {
  Documents(
    category : Maybe(DocumentCategory),
    documents : Documents,
    document : Document,
    basePath : String,
    contents : Html,
    title : String)

  Learn(String, Lesson)
  NotFound
  Initial
  Install
  Home
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

        Install => <Pages.Install/>

        Learn(path, lesson) =>
          <Lesson
            previousLesson={lesson.previousLesson}
            nextLesson={lesson.nextLesson}
            instructions={lesson.contents}
            files={lesson.files}
            path={path}/>

        Home => <Pages.Home/>
        Initial => <></>
        NotFound => <>"404"</>
      }
    </Body>
  }
}
