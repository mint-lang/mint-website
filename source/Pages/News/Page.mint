component PageHeader {
  property subtitle : String
  property title : String

  style root {
    line-height: 1;

    span {
      margin-bottom: 15px;
      margin-top: 7px;

      font-size: 16px;
      display: block;
      opacity: 0.75;
    }
  }

  fun render : Html {
    <h1::root>
      title
      <span>subtitle</span>
    </h1>
  }
}

component Pages.News.Page {
  // The contents to display.
  property contents : Html

  // The news item for metadata.
  property news : News

  // Styles for the root element.
  style root {
    max-width: 100ch;
    margin: 0 auto;
    width: 100%;
  }

  // Renders the component.
  fun render : Html {
    let publishedText =
      Time.format(news.time, Time.Format.ENGLISH,
        "Published %d %B, %Y by #{news.author}")

    <div::root>
      <Content>
        <PageHeader
          subtitle="#{news.subtitle} | #{publishedText}"
          title={news.title}
        />

        contents
      </Content>
    </div>
  }
}
