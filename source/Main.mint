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
          /> or <Loader/>

        Tutorial(previousLessonPath, nextLessonPath, lessons, _, lesson, path) =>
          <Lesson
            previousLessonPath={previousLessonPath}
            nextLessonPath={nextLessonPath}
            instructions={lesson.contents}
            lessons={lessons}
            path={path}
          /> or <Loader/>

        ApiDocs(prefix, entities, entity, sidebarInfo) =>
          <Pages.ApiDocs
            sidebarInfo={sidebarInfo}
            entities={entities}
            entity={entity}
            prefix={prefix}
          /> or <Loader/>

        Sandbox(page, user) =>
          case page {
            Editor(sandbox) =>
              <Sandbox.Editor defaultSandbox={sandbox} userStatus={user}/> or <Loader

              />

            Recent(sandboxes) =>
              <Sandbox.Recent sandboxes={sandboxes} userStatus={user}/> or <Loader

              />

            Mine(sandboxes) =>
              <Sandbox.Mine sandboxes={sandboxes} userStatus={user}/> or <Loader/>

            Error => <Pages.Error/> or <Loader/>
            Initial => <></>
          }

        NotFound => <Pages.NotFound/> or <Loader/>
        Page(title, page) => page
        Initial => <></>
      }
    </Body>
  }
}
