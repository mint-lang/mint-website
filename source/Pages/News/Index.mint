async component Pages.News.Index {
  connect Application exposing { isMobile }

  // The news list.
  property news : Map(String, News) = { } of String => News

  // Styles for the root element.
  style root {
    max-width: 80ch;
    margin: 0 auto;
    width: 100%;

    h1 {
      font-weight: normal;
      font-family: Forum;
      font-size: 2.25em;
      margin: 0 auto;
    }

    span {
      margin-top: 5px;
      font-size: 18px;
      display: block;
      opacity: 0.75;
    }

    hr {
      border: 0;
      border-bottom: 3px double var(--border-color);

      margin-top: 15px;
      margin-bottom: 30px;
    }
  }

  // Styles for a news item.
  style item {
    border-left: 3px solid var(--border-color);
    padding-left: 15px;

    a:not([name]) {
      font-size: 22px;
      text-decoration: none;
      color: currentColor;
      font-weight: 400;
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
      <h1>"News"</h1>
      <span>"What's happening in the Mint world?"</span>
      <hr/>

      for path, item of news {
        <div::item>
          <a href="/news/#{path}">item.title</a>
          <p>item.subtitle</p>

          <span>
            Time.format(item.time, Time.Format.ENGLISH,
              "Published %d %B, %Y by #{item.author}")
          </span>
        </div>
      }
    </div>
  }
}
