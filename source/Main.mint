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
        NotFound => <Pages.NotFound/>
        Initial => <></>
      }
    </Body>
  }
}
