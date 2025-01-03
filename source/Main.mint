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
            title={title}
          />

        Tutorial(previousLessonPath, nextLessonPath, lessons, _, lesson, path) =>
          <Lesson
            previousLessonPath={previousLessonPath}
            nextLessonPath={nextLessonPath}
            instructions={lesson.contents}
            lessons={lessons}
            path={path}
          />

        ApiDocs(prefix, entities, entity, sidebarInfo) =>
          <Pages.ApiDocs
            sidebarInfo={sidebarInfo}
            entities={entities}
            entity={entity}
            prefix={prefix}
          />

        Sandbox(page, user) =>
          case page {
            Editor(sandbox) =>
              <Sandbox.Editor defaultSandbox={sandbox} userStatus={user}/>

            Recent(sandboxes) =>
              <Sandbox.Recent sandboxes={sandboxes} userStatus={user}/>

            Mine(sandboxes) =>
              <Sandbox.Mine sandboxes={sandboxes} userStatus={user}/>

            Error => <Pages.Error/>
            Initial => <></>
          }

        NotFound => <Pages.NotFound/>
        Page(title, page) => page
        Initial => <></>
      }
    </Body>
  }
}
