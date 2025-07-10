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

        From(base, from, data) =>
          <Pages.From.Language base={base} from={from} data={data}/> or <Loader/>

        Example({title, _}, _, contents) =>
          <Sandbox.Editor
            defaultSandbox={Sandbox.fromExample(title, contents)}
            userStatus={UserStatus.Initial}
          /> or <Loader/>

        Article(news, contents) =>
          <Pages.News.Page news={news} contents={contents}/>

        Articles(news, posts) => <Pages.News.Index news={news} posts={posts}/>
        ExampleIndex(data) => <Pages.Examples.Index data={data}/> or <Loader/>
        FeatureMatrix => <Pages.FeatureMatrix/> or <Loader/>
        FromIndex(data) => <Pages.From.Index data={data}/>
        NotFound => <Pages.NotFound/> or <Loader/>
        Page(title, page) => page
        Initial => <></>
      }
    </Body>
  }
}
