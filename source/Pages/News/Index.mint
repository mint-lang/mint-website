async component Pages.News.Index {
  connect Application exposing { isMobile }

  // The news list.
  property news : Map(String, News) = { } of String => News

  // Styles for the root element.
  style root {
    max-width: 80ch;
    margin: 0 auto;
    width: 100%;
  }

  // Styles for a news item.
  style item {
    border-left: 3px solid var(--border-color);
    padding-left: 15px;
    margin-top: 30px;

    a:not([name]) {
      text-decoration: none;
      color: currentColor;
      font-weight: 400;
      font-size: 22px;

      &:hover {
        color: var(--color-mintgreen);
      }
    }

    p {
      margin: 5px 0;
    }

    span {
      font-size: 12px;
    }
  }

  // Renders the component.
  fun render : Html {
    <div::root>
      <Content>
        <PageHeader subtitle="What's happening in the Mint world?" title="News"/>
      </Content>

      for path, item of news {
        <div::item>
          <a href="/news/#{path}">item.title</a>
          <p>item.subtitle</p>

          <span>
            Time.format(item.time, Time.Format.ENGLISH,
              "Published %B %*d, %Y by #{item.author}")
          </span>
        </div>
      }
    </div>
  }
}
