type Page {
  Reference(
    docs : Docs,
    contents : Html,
    path : String)

  Learn(String, Lesson)
  NotFound
  Initial
  Install
  Home
}

type Docs {
  categories : Array(Docs.Category),
  pages : Array(Docs.Page)
}

type Docs.Category {
  pages : Array(Docs.Page),
  path : String,
  name : String
}

type Docs.Page {
  contents : Deferred(Html),
  name : String,
  path : String
}

component Main {
  connect Application exposing { page }

  fun render : Html {
    <Body>
      case page {
        Reference(path, contents, docs) =>
          <Reference
            contents={contents}
            title="Reference"
            docs={docs}
            path={path}/>

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
