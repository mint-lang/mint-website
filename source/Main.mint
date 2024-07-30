component Main {
  connect Application exposing { page }

  fun render : Html {
    <Body>
      case page {
        Documents(category, documents, document, basePath, contents, title) =>
          <Documents
            documents={documents}
            document={document}
            contents={contents}
            basePath={basePath}
            category={category}
            title={title}/>

        Tutorial(previousLessonPath, nextLessonPath, lessons, _, lesson, path) =>
          <Lesson
            previousLessonPath={previousLessonPath}
            nextLessonPath={nextLessonPath}
            instructions={lesson.contents}
            lessons={lessons}
            path={path}/>

        ApiDocs(entities, entity) =>
          <Pages.ApiDocs
            entities={entities}
            entity={entity}/>

        NotFound => <Pages.NotFound/>
        Page(title, page) => page
        Initial => <></>
      }
    </Body>
  }
}
